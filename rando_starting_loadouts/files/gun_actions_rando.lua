table.insert( actions,
{
	id          = "CHARM",
	name 		= "$action_charm",
	description = "$actiondesc_charm",
	sprite 		= "data/ui_gfx/gun_actions/charm.png",
	type 		= ACTION_TYPE_MODIFIER,
	spawn_level                       = "1,3,4,5", -- FREEZE
	spawn_probability                 = "1,1,1,1", -- FREEZE
	price = 100,
	max_uses 	= 7,
	mana = 10,
	custom_xml_file = "data/entities/misc/custom_cards/charm.xml",
	action 		= function()
		--c.damage_projectile_add = c.damage_projectile_add - 0.003
		--c.game_effect_entities = c.game_effect_entities .. "data/entities/misc/effect_polymorph.xml,"
		--c.extra_entities = c.extra_entities .. "data/entities/particles/polymorph.xml,"
		
		c.game_effect_entities = c.game_effect_entities .. "data/entities/misc/effect_charm.xml,"
		c.extra_entities = c.extra_entities .. "data/entities/particles/charm.xml,"
		draw_actions( 1, true )		
		
		-- c.extra_entities = c.extra_entities .. "data/entities/particles/freeze_charge.xml,"
	end,

})

table.insert( actions,
{
	id          = "CHARM_FIELD",
	name 		= "$action_charm_field",
	description = "$actiondesc_charm_field",
	sprite 		= "data/ui_gfx/gun_actions/charm_field.png",
	type 		= ACTION_TYPE_PROJECTILE,
	spawn_level                       = "2,3,4", -- BERSERK_FIELD
	spawn_probability                 = "1,1,1", -- BERSERK_FIELD
	price = 200,
	mana = 30,
	max_uses = 15,
	action 		= function()
		add_projectile("data/entities/projectiles/deck/charm_field.xml")
		c.fire_rate_wait = c.fire_rate_wait + 15
	end,
})

table.insert( actions,
{
	id          = "BERSERK",
	name 		= "$action_berserk",
	description = "$actiondesc_berserk",
	sprite 		= "data/ui_gfx/gun_actions/berserk.png",
	type 		= ACTION_TYPE_MODIFIER,
	spawn_level                       = "1,3,4,5", -- BERSERK
	spawn_probability                 = "1,1,1,1", -- BERSERK
	price = 100,
	max_uses 	= 7,
	mana = 10,
	custom_xml_file = "data/entities/misc/custom_cards/berserk.xml",
	action 		= function()
		--c.damage_projectile_add = c.damage_projectile_add - 0.003
		--c.game_effect_entities = c.game_effect_entities .. "data/entities/misc/effect_polymorph.xml,"
		--c.extra_entities = c.extra_entities .. "data/entities/particles/polymorph.xml,"
		
		c.game_effect_entities = c.game_effect_entities .. "data/entities/misc/effect_berserk.xml,"
		c.extra_entities = c.extra_entities .. "data/entities/particles/berserk.xml,"
		draw_actions( 1, true )		
		
		-- c.extra_entities = c.extra_entities .. "data/entities/particles/freeze_charge.xml,"
	end,
})

table.insert( actions,
{
	id          = "SEA_BLOOD",
	name 		= "$action_sea_blood",
	description = "$actiondesc_sea_blood",
	sprite 		= "data/ui_gfx/gun_actions/sea_blood.png",
	sprite_unidentified = "data/ui_gfx/gun_actions/sea_blood_unidentified.png",
	type 		= ACTION_TYPE_MATERIAL,
	spawn_level                       = "0,4,5,6", -- BERSERK_FIELD
	spawn_probability                 = "1,1,1,1", -- BERSERK_FIELD
	price = 350,
	mana = 140,
	max_uses = 3,
	action 		= function()
		add_projectile("data/entities/projectiles/deck/sea_blood.xml")
		c.fire_rate_wait = c.fire_rate_wait + 15
	end,
})

table.insert( actions,
{
	id          = "BLOOD_TRAIL",
	name 		= "$action_blood_trail",
	description = "$actiondesc_blood_trail",
	sprite 		= "data/ui_gfx/gun_actions/blood_trail.png",
	sprite_unidentified = "data/ui_gfx/gun_actions/oil_trail_unidentified.png",
	type 		= ACTION_TYPE_MODIFIER,
	spawn_level                       = "2,3,4", -- oil_TRAIL
	spawn_probability                 = "1,1,1", -- oil_TRAIL
	price = 160,
	mana = 10,
	--max_uses = 50,
	custom_xml_file = "data/entities/misc/custom_cards/blood_trail.xml",
	action 		= function()
		c.trail_material = c.trail_material .. "blood,"
		c.trail_material_amount = c.trail_material_amount + 20
		draw_actions( 1, true )
	end,
})