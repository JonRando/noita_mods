dofile( "mods/rando_starting_loadouts/files/loadouts.lua" )
dofile( "data/scripts/perks/perk.lua" )

function OnPlayerSpawned( player_entity ) -- this runs when player entity has been created
	local init_check_flag = "start_loadouts_init_done"
	if GameHasFlagRun( init_check_flag ) then
		return
	end
	GameAddFlagRun( init_check_flag )

	-- ---
	local x,y = EntityGetTransform( player_entity )
	SetRandomSeed( x + 344, y - 523 )
	
	local loadout_rnd = Random( 1, #loadout_list )
	local loadout_choice = loadout_list[loadout_rnd]
	
	local loadout_name = loadout_choice.name
	
	-- Add a random spellcaster type to the loadout name
	local spellcaster_types = { "wizard", "warlock", "witch", "mage", "druid", "magician", "sorcerer", "magus", "seer", "priest", "shaman", "oracle", "prophet" }
	local spellcaster_types_rnd = Random( 1, #spellcaster_types )
	loadout_name = string.gsub( loadout_name, "TYPE", spellcaster_types[spellcaster_types_rnd] )
	
	local inventory = nil
	local cape = nil
	local player_arm = nil
	
	local loadout_cape_color = loadout_choice.cape_color
	local loadout_cape_color_edge = loadout_choice.cape_color_edge

	-- find the quick inventory, player cape and arm
	local player_child_entities = EntityGetAllChildren( player_entity )
	if ( player_child_entities ~= nil ) then
		for i,child_entity in ipairs( player_child_entities ) do
			local child_entity_name = EntityGetName( child_entity )
			
			if ( child_entity_name == "inventory_quick" ) then
				inventory = child_entity
			end
			
			if ( child_entity_name == "cape" ) then
				cape = child_entity
			end
			
			if ( child_entity_name == "arm_r" ) then
				player_arm = child_entity
			end
		end
	end
	
	-- set player sprite (since we change only one value, ComponentSetValue is fine)
	local player_sprite_component = EntityGetFirstComponent( player_entity, "SpriteComponent" )
	local player_sprite_file = "mods/rando_starting_loadouts/files/" .. loadout_choice.folder .. "/player.xml"
	ComponentSetValue( player_sprite_component, "image_file", player_sprite_file )
	
	-- set player arm sprite
	local player_arm_sprite_component = EntityGetFirstComponent( player_arm, "SpriteComponent" )
	local player_arm_sprite_file = "mods/rando_starting_loadouts/files/" .. loadout_choice.folder .. "/player_arm.xml"
	ComponentSetValue( player_arm_sprite_component, "image_file", player_arm_sprite_file )
	
	-- set player cape colour (since we're changing multiple variables, we'll use the edit_component() utility)
	edit_component( cape, "VerletPhysicsComponent", function(comp,vars) 
		vars.cloth_color = loadout_cape_color
		vars.cloth_color_edge = loadout_cape_color_edge
	end)
	
	-- set player ragdoll
	local player_ragdoll_component = EntityGetFirstComponent( player_entity, "DamageModelComponent" )
	local player_ragdoll_file = "mods/rando_starting_loadouts/files/" .. loadout_choice.folder .. "/ragdoll/filenames.txt"
	ComponentSetValue( player_ragdoll_component, "ragdoll_filenames_file", player_ragdoll_file )

	-- set inventory contents
	if ( inventory ~= nil ) then
		local inventory_items = EntityGetAllChildren( inventory )
		
		-- remove default items
		if inventory_items ~= nil then
			for i,item_entity in ipairs( inventory_items ) do
				GameKillInventoryItem( player_entity, item_entity )
			end
		end

		-- add loadout items
		local loadout_items = loadout_choice.items
		for item_id,loadout_item in ipairs( loadout_items ) do
			if ( tostring( type( loadout_item ) ) ~= "table" ) then
				local item_entity = EntityLoad( loadout_item )
				EntityAddChild( inventory, item_entity )
			else
				local amount = loadout_item.amount or 1
				
				for i=1,amount do
					local item_option = ""
					
					if ( loadout_item.options ~= nil ) then
						local item_options = loadout_item.options
						local item_options_rnd = Random( 1, #item_options )
						
						item_option = item_options[item_options_rnd]
					else
						item_option = loadout_item[1]
					end
					
					local item_entity = EntityLoad( item_option )
					if item_entity then
						EntityAddChild( inventory, item_entity )
					end
				end
			end
		end
	end
	
	-- spawn two perks
	if ( loadout_choice.perks ~= nil ) then
		for i,perk_name in ipairs( loadout_choice.perks ) do
			local perk_entity = perk_spawn( x, y, perk_name )
			if ( perk_entity ~= nil ) then
				perk_pickup( perk_entity, player_entity, EntityGetName( perk_entity ), false, false )
			end
		end	
	end
	
	GamePrintImportant( "You're a " .. loadout_name .. "!", "" )
end

--ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "files/spellbound/modifieractions.lua")

-- Stainable sprites should have a corresponding SPRITE_NAME_uv_src.png next to the sprite file, and the folder containing the sprite should be passed to ModDevGenerateSpriteUVsForDirectory().
-- For example for 'player.png' the corresponding UV source file is called 'player_uv_src.png'
-- ModDevGenerateSpriteUVsForDirectory() must be called in init.lua file scope. It doesn't do anything outside noita_dev.exe.
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/fire" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/slime" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/summoner" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/thunder" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/engineer" )
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/shadow" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/aqua" )
ModDevGenerateSpriteUVsForDirectory( "mods/starting_loadouts/files/blood" )