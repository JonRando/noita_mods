--[[table.insert( perk_list, 
{
	id = "GENOME_RANDOM_ALLIES",
	ui_name = "$perk_random_allies",
	ui_description = "$perkdesc_random_allies",
	ui_icon = "data/ui_gfx/perk_icons/random_allies.png",
	perk_icon = "data/items_gfx/perks/random_allies.png",
	-- player changed herd_id to a random herd_id
	func = function( entity_perk_item, entity_who_picked, item_name )
		if( entity_who_picked ~= nil and entity_perk_item ~= nil ) then
			local pos_x, pos_y = EntityGetTransform( entity_item )
			local random_herds = { "slimes", "robot", "fire", "orcs", "rat", "electricity", "worm,", "zombie", "mage" }

			SetRandomSeed( pos_x, pos_y )
			local new_herd = random_herds[ Random( #random_herds ) ]

			GenomeSetHerdId( entity_who_picked, new_herd )
		end
	end,
})
table.insert( perk_list, 
{
	id = "GENOME_ORC_ALLIES",
	ui_name = "Orc Alliance",
	ui_description = "You are on friendly terms with the orcs.",	-- TODO: move to the translation file
	ui_icon = "data/ui_gfx/perk_icons/random_allies.png",
	perk_icon = "data/items_gfx/perks/random_allies.png",
	-- player changed herd_id to a random herd_id
	func = function( entity_perk_item, entity_who_picked, item_name )
		if( entity_who_picked ~= nil and entity_perk_item ~= nil ) then
			local pos_x, pos_y = EntityGetTransform( entity_item )

			SetRandomSeed( pos_x, pos_y )

			GenomeSetHerdId( entity_who_picked, "orcs" )
		end
	end,
})
table.insert( perk_list, 
{
	id = "GENOME_ZOMBIE_ALLIES",
	ui_name = "Undead Alliance",
	ui_description = "You are aligned with the forces of the undead.",	-- TODO: move to the translation file
	ui_icon = "data/ui_gfx/perk_icons/random_allies.png",
	perk_icon = "data/items_gfx/perks/random_allies.png",
	-- player changed herd_id to a random herd_id
	func = function( entity_perk_item, entity_who_picked, item_name )
		if( entity_who_picked ~= nil and entity_perk_item ~= nil ) then
			local pos_x, pos_y = EntityGetTransform( entity_item )

			SetRandomSeed( pos_x, pos_y )

			GenomeSetHerdId( entity_who_picked, "zombie" )
		end
	end,
})]]--

