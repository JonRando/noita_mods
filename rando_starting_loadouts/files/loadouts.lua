loadout_list =
{
	
	{
		name = "Summoner TYPE",
		folder = "summoner",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff60a1a2,
		cape_color_edge = 0xff3c696a,
		items = 
		{
			"mods/rando_starting_loadouts/files/summoner/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/summoner/wands/wand_2.xml",
			"data/entities/items/pickup/potion_water.xml",
			{ 
			options = { "data/entities/items/pickup/egg_fire.xml", "data/entities/items/pickup/egg_red.xml", "data/entities/items/pickup/egg_monster.xml", "data/entities/items/pickup/egg_slime.xml" },
			amount = 3,
			},
		},
	},
	{
		name = "Fire TYPE",
		folder = "fire",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff5a60dd,
		cape_color_edge = 0xff3e43af,
		items = 
		{
			"mods/rando_starting_loadouts/files/fire/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/fire/wands/wand_2.xml",
			{
			"mods/rando_starting_loadouts/files/fire/potion_fire.xml",
			amount = 2,
			},
		},
		perks =
		{
			"PROTECTION_FIRE",
			"BLEED_OIL",
		},
	},
	{
		name = "Slime TYPE",
		folder = "slime",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff9a6f9b,
		cape_color_edge = 0xff76547f,
		items = 
		{
			"mods/rando_starting_loadouts/files/slime/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/slime/wands/wand_2.xml",
			--"mods/rando_starting_loadouts/files/slime/wands/wand_3.xml",
			{
			"mods/rando_starting_loadouts/files/slime/potion_slime.xml",
			amount = 2,
			},
		},
		perks =
		{
			"BLEED_SLIME",
		},
	},
	{
		name = "Thunder TYPE",
		folder = "thunder",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff9d7b4d,
		cape_color_edge = 0xff846235,
		items = 
		{
			"mods/rando_starting_loadouts/files/thunder/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/thunder/wands/wand_2.xml",
			"data/entities/items/pickup/thunderstone.xml",
		},
		perks =
		{
			"ELECTRICITY",
		},
	},
	{	-- Rando Loadouts
		name = "Tinker TYPE",
		folder = "engineer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff808080,
		cape_color_edge = 0xff404040,
		items = 
		{
			"mods/rando_starting_loadouts/files/engineer/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/engineer/wands/wand_2.xml",
			"mods/rando_starting_loadouts/files/engineer/potion_oil.xml",
		},
		perks =
		{
			"PROTECTION_MELEE",
		},
	},
	{
		name = "Shadow TYPE",
		folder = "shadow",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff404040,
		cape_color_edge = 0xff101010,
		items = 
		{
			"mods/rando_starting_loadouts/files/shadow/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/shadow/wands/wand_2.xml",
			"mods/rando_starting_loadouts/files/shadow/potion_invis.xml",
		},
		perks =
		{
			"INVISIBILITY",
		},
	},
	{
		name = "Aqua TYPE",
		folder = "transmute",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffad421b,
		cape_color_edge = 0xff423213,
		items = 
		{
			"mods/rando_starting_loadouts/files/transmute/wands/wand_1.xml",
			"mods/rando_starting_loadouts/files/transmute/wands/wand_2.xml",
			"data/entities/items/pickup/potion_water.xml",
		},
		perks =
		{
			"BREATH_UNDERWATER",
		},
	},
	{
		name = "Blood TYPE",
		folder = "transmute",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff1d12Eb,
		cape_color_edge = 0xff021283,
		items = 
		{
			"mods/rando_starting_loadouts/files/transmute/wands/wand_3.xml",
			"mods/rando_starting_loadouts/files/transmute/wands/wand_4.xml",
			"mods/rando_starting_loadouts/files/transmute/potion_blood.xml",
		},
		perks =
		{
			"GLOBAL_GORE",
		},
	},
	--[[
	{
		name = "Transmutation Sorcerer",
	},
	{
		name = "Sludge warlock",
	},
	{
		name = "Vampire Seer",
	},
	{
		name = "Ricochet druid",
	},
	{
		name = "Teleport wizard",
	},
	{
		name = "Frost Magus",
	},
	{
		name = "Anarchist Priest",
	},
	]]--
}