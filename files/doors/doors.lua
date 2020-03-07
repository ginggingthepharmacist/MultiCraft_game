--
-- Doors
--

-- Apple Wood Doors --

doors.register("door_wood", {
	tiles = {{name = "doors_door_wood.png", backface_culling = true}},
	description = "Apple Wood Door",
	inventory_image = "doors_item_wood.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	fuel = 14,
	recipe = {
		{"default:wood", "default:wood"},
		{"default:wood", "default:wood"},
		{"default:wood", "default:wood"}
	}
})

-- Acacia Wood Doors --

doors.register("door_acacia_wood", {
	tiles = {{name = "doors_door_acacia_wood.png", backface_culling = true}},
	description = "Acacia Wood Door",
	inventory_image = "doors_item_acacia_wood.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	fuel = 14,
	recipe = {
		{"default:acacia_wood", "default:acacia_wood"},
		{"default:acacia_wood", "default:acacia_wood"},
		{"default:acacia_wood", "default:acacia_wood"}
	}
})

-- Birch Wood Doors --

doors.register("door_birch_wood", {
	tiles = {{name = "doors_door_birch_wood.png", backface_culling = true}},
	description = "Birch Wood Door",
	inventory_image = "doors_item_birch_wood.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	fuel = 14,
	recipe = {
		{"default:birch_wood", "default:birch_wood"},
		{"default:birch_wood", "default:birch_wood"},
		{"default:birch_wood", "default:birch_wood"}
	}
})

-- Jungle Wood Doors --

doors.register("door_jungle_wood", {
	tiles = {{name = "doors_door_jungle_wood.png", backface_culling = true}},
	description = "Jungle Wood Door",
	inventory_image = "doors_item_jungle_wood.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	fuel = 14,
	recipe = {
		{"default:junglewood", "default:junglewood"},
		{"default:junglewood", "default:junglewood"},
		{"default:junglewood", "default:junglewood"}
	}
})

-- Pine Wood Doors --

doors.register("door_pine_wood", {
	tiles = {{name = "doors_door_pine_wood.png", backface_culling = true}},
	description = "Pine Wood Door",
	inventory_image = "doors_item_pine_wood.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	fuel = 14,
	recipe = {
		{"default:pine_wood", "default:pine_wood"},
		{"default:pine_wood", "default:pine_wood"},
		{"default:pine_wood", "default:pine_wood"}
	}
})

doors.register("door_steel", {
	tiles = {{name = "doors_door_steel.png", backface_culling = true}},
	description = "Steel Door",
	inventory_image = "doors_item_steel.png",
	protected = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot"}
	}
})

doors.register("door_grill", {
	tiles = {{name = "doors_door_grill.png", backface_culling = true}},
	description = "Grilled Door",
	inventory_image = "doors_item_grill.png",
	protected = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	recipe = {
		{"default:grill_bar", "default:grill_bar"},
		{"default:grill_bar", "default:grill_bar"},
		{"default:grill_bar", "default:grill_bar"}
	}
})

-- Aliases

local doors_aliases = {
	{"acacia_b_1",		"doors:door_acacia_wood_a"},
	{"acacia_b_2",		"doors:door_acacia_wood_b"},
	{"acacia_t_1",		"air"},
	{"acacia_t_2",		"air"},
	{"birch_b_1",		"doors:door_birch_wood_a"},
	{"birch_b_2",		"doors:door_birch_wood_b"},
	{"birch_t_1",		"air"},
	{"birch_t_2",		"air"},
	{"dark_oak_b_1",	"doors:door_pine_wood_a"},
	{"dark_oak_b_2",	"doors:door_pine_wood_b"},
	{"dark_oak_t_1",	"air"},
	{"dark_oak_t_2",	"air"},
	{"jungle_b_1",		"doors:door_jungle_wood_a"},
	{"jungle_b_2",		"doors:door_jungle_wood_a"},
	{"jungle_t_1",		"air"},
	{"jungle_t_2",		"air"},
	{"wood_b_1",		"doors:door_wood_a"},
	{"wood_b_2",		"doors:door_wood_b"},
	{"wood_t_1",		"air"},
	{"wood_t_2",		"air"},
	{"steel_b_1",		"doors:door_steel_a"},
	{"steel_b_2",		"doors:door_steel_b"},
	{"steel_t_1",		"air"},
	{"steel_t_2",		"air"},
	{"wood_room_a",		"doors:door_wood_room_medium"},
	{"acacia",			"doors:door_acacia_wood"},
	{"birch",			"doors:door_birch_wood"},
	{"dark_oak",		"doors:door_pine_wood"},
	{"jungle",			"doors:door_jungle_wood"}
}

for i = 1, #doors_aliases do
	local old, new = unpack(doors_aliases[i])
	minetest.register_alias("doors:door_" .. old, new)
end

minetest.register_alias("doors:hidden", "air")


--
-- Trapdoors
--

doors.register_trapdoor("doors:trapdoor", {
	description = "Wooden Trapdoor",
	inventory_image = "doors_trapdoor.png",
	wield_image = "doors_trapdoor.png",
	tile_front = "doors_trapdoor.png",
	tile_side = "doors_trapdoor_side.png",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1}
})

doors.register_trapdoor("doors:trapdoor_steel", {
	description = "Steel Trapdoor",
	inventory_image = "doors_trapdoor_steel.png",
	wield_image = "doors_trapdoor_steel.png",
	tile_front = "doors_trapdoor_steel.png",
	tile_side = "doors_trapdoor_steel_side.png",
	protected = true,
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	groups = {cracky = 1, level = 2, door = 1}
})

minetest.register_craft({
	output = "doors:trapdoor 2",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

minetest.register_craft({
	output = "doors:trapdoor_steel",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "doors:trapdoor",
	burntime = 7
})


--
-- Fencegates
--

doors.register_fencegate("doors:gate_wood", {
	description = "Apple Wood Fence Gate",
	texture = "default_wood.png",
	inventory_image = "doors_fencegate_wood.png",
	wield_image = "doors_fencegate_wood.png",
	material = "default:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, fencegate_wood = 1}
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:fencegate_wood",
	burntime = 10
})

minetest.register_alias("fences:fencegate_open", "doors:gate_wood_open")
minetest.register_alias("fences:fencegate", "doors:gate_wood")
minetest.register_alias("doors:gate_wood_closed", "doors:gate_wood")