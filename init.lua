visionLib.Material.require({"iron"})

local function stoneType(name, name2, groups)
	minetest.register_node("poly_decor:"..name,{
		description=name2,
		tiles={"poly_"..name..".png"},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	
	minetest.register_node("poly_decor:"..name.."_slab",{
		description=name2.." Slab",
		drawtype="nodebox",
		tiles={"poly_"..name..".png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={-0.5,-0.5,-0.5,0.5,0,0.5},
		},
		groups=groups,
		on_place=place_rotated.slab,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_slab 6",
		recipe={
			{"poly_decor:"..name, "poly_decor:"..name, "poly_decor:"..name}
		}
	})
	
	minetest.register_craft({
		type="shapeless",
		output="poly_decor:"..name,
		recipe={"poly_decor:"..name.."_slab","poly_decor:"..name.."_slab"},
	})
	
	minetest.register_node("poly_decor:"..name.."_stair",{
		description=name2.." Stairs",
		drawtype="nodebox",
		tiles={"poly_"..name..".png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={
				{-0.5,-0.5,-0.5,0.5,0,0.5},
				{0.5,0.5,0.5,-0.5,-0.5,0}
			},
		},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_stair 8",
		recipe={
			{"poly_decor:"..name, "", ""},
			{"poly_decor:"..name, "poly_decor:"..name, ""},
			{"poly_decor:"..name, "poly_decor:"..name, "poly_decor:"..name}
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_block",{
		description=name2.." Block",
		tiles={"poly_"..name..".png^poly_border_overlay.png"},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_block 9",
		recipe={
			{"poly_decor:"..name, "poly_decor:"..name, "poly_decor:"..name},
			{"poly_decor:"..name, "poly_decor:"..name, "poly_decor:"..name},
			{"poly_decor:"..name, "poly_decor:"..name, "poly_decor:"..name}
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_block_slab",{
		description=name2.." Block Slab",
		drawtype="nodebox",
		tiles={"poly_"..name..".png^poly_border_overlay.png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={-0.5,-0.5,-0.5,0.5,0,0.5},
		},
		groups=groups,
		on_place=place_rotated.slab,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_block_slab 6",
		recipe={
			{"poly_decor:"..name.."_block", "poly_decor:"..name.."_block", "poly_decor:"..name.."_block"}
		}
	})
	
	minetest.register_craft({
		type="shapeless",
		output="poly_decor:"..name.."_block",
		recipe={"poly_decor:"..name.."_block_slab","poly_decor:"..name.."_block_slab"},
	})
	
	minetest.register_node("poly_decor:"..name.."_block_stair",{
		description=name2.." Block Stairs",
		drawtype="nodebox",
		tiles={"poly_"..name..".png^poly_border_overlay.png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={
				{-0.5,-0.5,-0.5,0.5,0,0.5},
				{0.5,0.5,0.5,-0.5,-0.5,0}
			},
		},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_block_stair 8",
		recipe={
			{"poly_decor:"..name.."_block", "", ""},
			{"poly_decor:"..name.."_block", "poly_decor:"..name.."_block", ""},
			{"poly_decor:"..name.."_block", "poly_decor:"..name.."_block", "poly_decor:"..name.."_block"}
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_bricks",{
		description=name2.." Bricks",
		tiles={"poly_"..name..".png^poly_bricks_overlay.png"},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_bricks 4",
		recipe={
			{"poly_decor:"..name, "poly_decor:"..name},
			{"poly_decor:"..name, "poly_decor:"..name},
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_bricks_slab",{
		description=name2.." Bricks Slab",
		drawtype="nodebox",
		tiles={"poly_"..name..".png^poly_bricks_overlay.png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={-0.5,-0.5,-0.5,0.5,0,0.5},
		},
		groups=groups,
		on_place=place_rotated.slab,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_bricks_slab 6",
		recipe={
			{"poly_decor:"..name.."_bricks", "poly_decor:"..name.."_bricks", "poly_decor:"..name.."_bricks"}
		}
	})
	
	minetest.register_craft({
		type="shapeless",
		output="poly_decor:"..name.."_bricks",
		recipe={"poly_decor:"..name.."_bricks_slab","poly_decor:"..name.."_bricks_slab"},
	})
	
	minetest.register_node("poly_decor:"..name.."_bricks_stair",{
		description=name2.." Bricks Stairs",
		drawtype="nodebox",
		tiles={"poly_"..name..".png^poly_bricks_overlay.png"},
		paramtype="light",
		paramtype2="facedir",
		node_box={
			type="fixed",
			fixed={
				{-0.5,-0.5,-0.5,0.5,0,0.5},
				{0.5,0.5,0.5,-0.5,-0.5,0}
			},
		},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_bricks_stair 8",
		recipe={
			{"poly_decor:"..name.."_bricks", "", ""},
			{"poly_decor:"..name.."_bricks", "poly_decor:"..name.."_bricks", ""},
			{"poly_decor:"..name.."_bricks", "poly_decor:"..name.."_bricks", "poly_decor:"..name.."_bricks"}
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_panel",{
		description=name2.." Panelling",
		tiles={"poly_"..name..".png^poly_border_overlay_panel.png","poly_"..name..".png"},
		drawtype="glasslike_framed",
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		type="shapeless",
		output="poly_decor:"..name.."_panel",
		recipe={"poly_decor:"..name.."_block"},
	})
	
	minetest.register_node("poly_decor:"..name.."_pillar1",{
		description=name2.." Pillar",
		tiles={"poly_"..name..".png^poly_circle_carving_overlay.png", "poly_"..name..".png^poly_circle_carving_overlay.png", "poly_"..name..".png^poly_pillar_overlay.png"},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
		paramtype2="facedir",
		on_place=place_rotated.log,
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_pillar1 2",
		recipe={
			{"poly_decor:"..name},
			{"poly_decor:"..name}
		}
	})
	
	minetest.register_node("poly_decor:"..name.."_pillar2",{
		description=name2.." Pillar",
		tiles={"poly_"..name..".png^poly_circle_carving_overlay.png", "poly_"..name..".png^poly_circle_carving_overlay.png", "poly_"..name..".png^poly_pillar_overlay_2.png"},
		groups=groups,
		sounds=default.node_sound_stone_defaults(),
		paramtype2="facedir",
		on_place=place_rotated.log,
	})
	
	minetest.register_craft({
		output="poly_decor:"..name.."_pillar2 3",
		recipe={
			{"poly_decor:"..name},
			{"poly_decor:"..name},
			{"poly_decor:"..name}
		}
	})
end

stoneType("froststone", "Froststone", {cracky=3})

minetest.register_craft({
	output="poly_decor:froststone 18",
	recipe={
		{"default:permafrost", "default:stone", "default:permafrost"},
		{"default:stone", "default:permafrost", "default:stone"},
		{"default:permafrost", "default:stone", "default:permafrost"}
	}
})

stoneType("charstone", "Charstone", {cracky=3})

minetest.register_craft({
	output="poly_decor:charstone 18",
	recipe={
		{"default:flint", "default:stone", "default:flint"},
		{"default:stone", "default:coal_lump", "default:stone"},
		{"default:flint", "default:stone", "default:flint"}
	}
})

stoneType("roron", "Roron Stone", {cracky=3})

minetest.register_craft({
	output="poly_decor:roron 18",
	recipe={
		{"default:coral_skeleton", "default:stone", "default:coral_skeleton"},
		{"default:stone", "default:apple", "default:stone"},
		{"default:coral_skeleton", "default:stone", "default:coral_skeleton"}
	}
})

minetest.register_node("poly_decor:rust",{
	description="Corroded Roron",
	tiles={"poly_rustblock.png"},
	groups={cracky=3},
	sounds=default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type="cooking",
	output="poly_decor:rust 3",
	recipe="poly_decor:roron",
})

minetest.register_node("poly_decor:blome",{
	description="Blome Block",
	tiles={"poly_blome.png"},
	groups={cracky=3},
	sounds=default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type="cooking",
	output="poly_decor:blome 2",
	recipe="poly_decor:charstone",
})

minetest.register_node("poly_decor:blome_slab",{
	description="Blome Slab",
	drawtype="nodebox",
	tiles={"poly_blome.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={-0.5,-0.5,-0.5,0.5,0,0.5},
	},
	groups={cracky=3},
	on_place=place_rotated.slab,
	sounds=default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output="poly_decor:blome_slab 6",
	recipe={
		{"poly_decor:blome", "poly_decor:blome", "poly_decor:blome"}
	}
})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:blome",
	recipe={"poly_decor:blome_slab","poly_decor:blome_slab"},
})

minetest.register_node("poly_decor:blome_stair",{
	description="Blome Stairs",
	drawtype="nodebox",
	tiles={"poly_blome.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={
			{-0.5,-0.5,-0.5,0.5,0,0.5},
			{0.5,0.5,0.5,-0.5,-0.5,0}
		},
	},
	groups={cracky=3},
	sounds=default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output="poly_decor:blome_stair 8",
	recipe={
		{"poly_decor:blome", "", ""},
		{"poly_decor:blome", "poly_decor:blome", ""},
		{"poly_decor:blome", "poly_decor:blome", "poly_decor:blome"}
	}
})

stoneType("enamel", "Swisted Enamel", {cracky=3})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:enamel",
	recipe={"poly_decor:froststone","default:silver_sand"},
})

minetest.register_node("poly_decor:wierlight", {
	description="Wierlight",
	tiles={"poly_enamel.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={choppy=3, oddly_breakable_by_hand=3},
	light_source=13,
	walkable=false,
	selection_box={
		type="fixed",
		fixed= {-0.1, -0.5, -0.1, 0.1, -0.4, 0.1}
	},
	node_box={
		type="fixed",
		fixed= {{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1}}
	},
	on_construct = function(pos)
		local meta=minetest.get_meta(pos)
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end,
	on_timer = function(pos, elapsed)
		for i=1,math.random(35,45) do
		pos2={x=pos.x+math.random()/5-0.1, y=pos.y-0.5, z=pos.z+math.random()/5-0.1}
		minetest.add_particle({
			pos = pos2,
			velocity = {x=(math.random()/10)*math.random(-1,1), y=0.8+(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			acceleration = {x=(math.random()/10)*math.random(-1,1), y=(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			expirationtime = math.random()*1.5,
			size = (math.random()/2),
			vertical = false,
			collisiondetection=true,
			texture = "poly_light_beam.png",
			glow=8,
		})
		end
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end
})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:wierlight 4",
	recipe={"poly_decor:enamel_slab","default:mese_crystal"},
})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:wierlite 4",
	recipe={"poly_decor:wierlight"},
})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:wierlight",
	recipe={"poly_decor:wierlite","poly_decor:wierlite","poly_decor:wierlite","poly_decor:wierlite"},
})

minetest.register_node("poly_decor:wierlite", {
	description="Wier-lite",
	tiles={"poly_enamel.png"},
	is_ground_content=false,
	sunlight_propagates=true,
	drawtype="nodebox",
	paramtype="light",
	groups={choppy=3, oddly_breakable_by_hand=3},
	light_source=13,
	walkable=false,
	selection_box={
		type="fixed",
		fixed= {-0.1, -0.5, -0.1, 0.1, -0.4, 0.1}
	},
	node_box={
		type="fixed",
		fixed= {{-0.1, -0.5, -0.1, 0.1, -0.4, 0.1}}
	},
	on_construct = function(pos)
		local meta=minetest.get_meta(pos)
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end,
	on_timer = function(pos, elapsed)
		for i=1,math.random(2,5) do
		pos2={x=pos.x+math.random()/5-0.1, y=pos.y-0.5, z=pos.z+math.random()/5-0.1}
		minetest.add_particle({
			pos = pos2,
			velocity = {x=(math.random()/10)*math.random(-1,1), y=0.4+(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			acceleration = {x=(math.random()/10)*math.random(-1,1), y=(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			expirationtime = math.random()*0.5,
			size = (math.random()/1.5),
			vertical = false,
			collisiondetection=true,
			texture = "poly_light_beam.png",
			glow=8,
		})
		end
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end
})

minetest.register_node("poly_decor:stake", {
	description = "Wooden Stake",
	tiles = {"poly_fence_wood.png", "poly_oben_wood.png", "poly_stripped_wood_edge.png"},
	connects_to={"poly_decor:stake", "poly_decor:stake2"},
	sounds = default.node_sound_wood_defaults(),
	groups={snappy=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.35, 0.05},
			{-0.03, -0.5, -0.03, 0.03, 0.425, 0.03},
			{-0.01, -0.5, -0.01, 0.01, 0.5, 0.01},
		},
		connect_bottom = {-0.0495, -1, -0.0495, 0.0495, -0.5, 0.0495},
	},
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	}
})

minetest.register_craft({
	output="poly_decor:stake 10",
	recipe={
		{"default:stick"},
		{"group:wood"},
		{"group:wood"}
	}
})

minetest.register_node("poly_decor:rope", {
	description = "Rope",
	tiles = {"poly_allfaces_rope.png"},
	inventory_image="poly_horizontal_rope.png",
	connects_to={"poly_decor:rope", "poly_decor:stake2", "poly_decor:ropebox"},
	sounds = default.node_sound_leaves_defaults(),
	groups={snappy=3},
	walkable=false,
	climbable=true,
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.036, -0.036, -0.036, 0.036, 0.036, 0.036}
		},
		connect_front = {-0.036, -0.036, -0.5, 0.036, 0.036, 0.036},
		connect_back =  {-0.036, -0.036, 0.5, 0.036, 0.036, 0.036},
		connect_left =  {-0.036, -0.036, -0.036, -0.5, 0.036, 0.036},
		connect_right =  {-0.036, -0.036, -0.036, 0.5, 0.036, 0.036},
		connect_top =  {-0.036, -0.036, -0.036, 0.036, 0.5, 0.036},
		connect_bottom =  {-0.036, -0.5, -0.036, 0.036, 0.036, 0.036},
	}
})

minetest.register_craft({
	output="poly_decor:rope 9",
	recipe={
		{"default:dry_grass_1", "default:dry_grass_1", "default:dry_grass_1"}
	}
})

minetest.register_craft({
	output="poly_decor:rope 9",
	recipe={
		{"default:grass_1", "default:grass_1", "default:grass_1"}
	}
})

minetest.register_node("poly_decor:stake2", {
	description = "Lashed Wooden Stake",
	tiles = {"poly_fence_wood.png^poly_rope_top.png", "poly_oben_wood.png", "poly_stripped_wood_edge.png^poly_horizontal_rope.png"},
	connects_to={"poly_decor:stake", "poly_decor:stake2", "poly_decor:rope"},
	sounds = default.node_sound_wood_defaults(),
	groups={snappy=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.35, 0.05},
			{-0.03, -0.5, -0.03, 0.03, 0.425, 0.03},
			{-0.01, -0.5, -0.01, 0.01, 0.5, 0.01},
			{-0.07, -0.12, -0.07, 0.07, 0.12, 0.07}
		},
		connect_bottom = {-0.0495, -1, -0.0495, 0.0495, -0.5, 0.0495},
		connect_front = {-0.036, -0.036, -0.5, 0.036, 0.036, 0.036},
		connect_back =  {-0.036, -0.036, 0.5, 0.036, 0.036, 0.036},
		connect_left =  {-0.036, -0.036, -0.036, -0.5, 0.036, 0.036},
		connect_right =  {-0.036, -0.036, -0.036, 0.5, 0.036, 0.036},
	},
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
})

minetest.register_craft({
	type="shapeless",
	output="poly_decor:stake2",
	recipe={"poly_decor:stake","poly_decor:rope"},
})


minetest.register_node("poly_decor:board_fence_tall", {
	description = "Tall Wooden Fence",
	tiles = {"poly_fence_wood.png","poly_fence_wood.png","poly_fence_wood.png^poly_horizontal_rope.png"},
	connects_to={"poly_decor:board_fence_tall"},
	sounds = default.node_sound_wood_defaults(),
	groups={choppy=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.15, -0.5, -0.15, 0.15, 1.5, 0.15},
		},
		connect_front = {-0.036, -0.45, -0.5, 0.036, 1.4, 0.036},
		connect_back =  {-0.036, -0.45, 0.5, 0.036, 1.4, 0.036},
		connect_left =  {-0.036, -0.45, -0.036, -0.5, 1.4, 0.036},
		connect_right =  {-0.036, -0.45, -0.036, 0.5, 1.4, 0.036},
	},
})

minetest.register_craft({
	output="poly_decor:board_fence_tall 6",
	recipe={
		{"group:wood", "group:tree", "group:wood"},
		{"poly_decor:rope", "group:tree", "poly_decor:rope"},
		{"group:wood", "group:tree", "group:wood"}
	}
})

minetest.register_node("poly_decor:driftwood_fence_tall", {
	description = "Tall Driftwood Fence",
	tiles = {"poly_fence_driftwood.png","poly_fence_driftwood.png","poly_fence_driftwood.png^poly_log_driftwood.png^poly_horizontal_rope.png"},
	connects_to={"poly_decor:driftwood_fence_tall"},
	sounds = default.node_sound_wood_defaults(),
	groups={choppy=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 1.5, 0.125},
		},
		connect_front = {-0.031, -0.45, -0.5, 0.036, 1.3, 0.037},
		connect_back =  {-0.036, -0.45, 0.5, 0.036, 1.45, 0.036},
		connect_left =  {-0.036, -0.45, -0.031, -0.5, 1.41, 0.034},
		connect_right =  {-0.033, -0.45, -0.036, 0.5, 1.32, 0.036},
	},
})

minetest.register_craft({
	output="poly_decor:driftwood_fence_tall 6",
	recipe={
		{"default:stick", "group:tree", "default:stick"},
		{"poly_decor:rope", "group:tree", "poly_decor:rope"},
		{"default:stick", "group:tree", "default:stick"}
	}
})

minetest.register_node("poly_decor:frost_glass",{
	description="Frosted Glass",
	tiles={"poly_frost_glass.png","poly_frost_glass_detail.png"},
	drawtype="glasslike_framed",
	paramtype="light",
	sunlight_propagates=true,
	use_texture_alpha=true,
	groups={cracky=3},
	sounds=visionLib.Sound.Glass(),
})

minetest.register_craft({
	type="cooking",
	output="poly_decor:frost_glass",
	recipe="poly_decor:froststone",
})


minetest.register_craft({
	output="poly_decor:frost_glass_pane 16",
	recipe={
		{"poly_decor:frost_glass", "poly_decor:frost_glass"}
	}
})

minetest.register_node("poly_decor:frost_glass_pane", {
	description = "Frosted Glass Pane",
	tiles = {"poly_froststone.png","poly_froststone.png",{name="poly_frost_glass_detail.png^poly_frost_glass2.png", backface_culling = true}},
	connects_to={"poly_decor:frost_glass_pane", "poly_decor:frost_glass"},
	sounds = visionLib.Sound.Glass(),
	groups={choppy=3},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates=true,
	use_texture_alpha=true,
	node_box = {
		type = "connected",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.5, 0.05},
		},
		connect_front = {-0.05, -0.5, -0.5, 0.05, 0.5, 0.05},
		connect_back =  {-0.05, -0.5, 0.5, 0.05, 0.5, -0.05},
		connect_left =  {0.05, -0.5, -0.05, -0.5, 0.5, 0.05},
		connect_right =  {-0.05, -0.5, -0.05, 0.5, 0.5, 0.05},
	},
})

minetest.register_node("poly_decor:ropebox", {
	description = "Rope Tether",
	tiles = {"poly_rope_coil.png", "poly_rope_coil.png", "poly_oben_wood.png", "poly_oben_wood.png", "poly_rope_coil_b.png", "poly_rope_coil_b.png"},
	sounds = default.node_sound_wood_defaults(),       	connects_to={"group:cracky", "group:choppy", "poly_decor:rope"},
	groups={choppy=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.25, 0.125},
			{-0.25, -0.5, -0.1875, -0.125, -0.1875, 0.1875},
			{0.125, -0.5, -0.1875, 0.25, -0.1875, 0.1875},
		},
		connect_front = {-0.036, -0.45, -0.5, 0.036, -0.35, 0.036},
		connect_back =  {-0.036, -0.45, 0.5, 0.036, -0.35, 0.036},
		connect_left =  {-0.036, -0.45, -0.036, -0.5, -0.35, 0.036},
		connect_right =  {-0.036, -0.45, -0.036, 0.5, -0.35, 0.036},
	},
})

minetest.register_craft({
	output="poly_decor:ropebox 4",
	recipe={
		{"poly_decor:rope", "group:tree", "poly_decor:rope"},
	}
})

minetest.register_node("poly_decor:lantern_a", {
	description = "Iron Lantern",
	tiles = {"poly_iron.png", "poly_iron.png", "poly_lantern.png"},
	sounds = visionLib.Sound.Metal(),       
	groups={cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	light_source=15,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.25, -0.25, 0.25, 0.25, 0.25}, 
			{-0.3125, 0.25, -0.3125, 0.3125, 0.375, 0.3125}, 
			{-0.3125, -0.375, -0.3125, 0.3125, -0.25, 0.3125}, 
			{-0.125, 0.375, -0.125, 0.125, 0.5, 0.125}, 
			{-0.125, -0.5, -0.125, 0.125, -0.375, 0.125}, 
		}
	}
})

minetest.register_craft({
	output="poly_decor:lantern_a 2",
	recipe={
		{"", "default:steel_ingot", ""},
		{"", "default:torch", ""},
		{"", "default:steel_ingot", ""}
	}
})

minetest.register_craft({
	output="poly_decor:lantern_b 2",
	recipe={
		{"", "", ""},
		{"default:steel_ingot", "default:torch", "default:steel_ingot"},
		{"", "default:steel_ingot", ""}
	}
})

minetest.register_node("poly_decor:lantern_b", {
	description = "Iron Brazier",
	tiles = {"poly_lantern.png","poly_iron.png","poly_iron.png"},
	sounds = visionLib.Sound.Metal(),       
	groups={cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	light_source=15,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.3125, 0.125},
			{0.125, -0.4375, -0.125, 0.25, -0.3125, 0.125},
			{-0.25, -0.4375, -0.125, -0.125, -0.3125, 0.125},
			{-0.125, -0.4375, -0.25, 0.125, -0.3125, -0.125},
			{-0.125, -0.4375, 0.125, 0.125, -0.3125, 0.25},
			{-0.125, -0.375, 0.25, 0.125, 0.125, 0.375},
			{-0.125, -0.375, -0.375, 0.125, 0.125, -0.25},
			{-0.375, -0.375, -0.125, -0.25, 0.125, 0.125},
			{0.25, -0.375, -0.125, 0.375, 0.125, 0.125},
			{-0.3125, -0.125, -0.3125, -0.25, 0, 0.3125},
			{0.25, -0.125, -0.3125, 0.3125, 0, 0.3125},
			{-0.25, -0.125, 0.25, 0.25, 0, 0.3125},
			{-0.25, -0.125, -0.3125, 0.25, 0, -0.25},
		}
	},
	on_construct = function(pos)
		local meta=minetest.get_meta(pos)
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end,
	on_timer = function(pos, elapsed)
		for i=1,math.random(3,19) do
		pos2={x=pos.x+math.random()/5-0.1, y=pos.y+0.1, z=pos.z+math.random()/5-0.1}
		minetest.add_particle({
			pos = pos2,
			velocity = {x=(math.random()/10)*math.random(-1,1), y=0.4+(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			acceleration = {x=(math.random()/10)*math.random(-1,1), y=(math.random()/10)*math.random(-1,1), z=(math.random()/10)*math.random(-1,1)},
			expirationtime = math.random()*0.5,
			size = math.random()*2,
			vertical = false,
			texture = "poly_torch_flame.png",
			glow=8,
		})
		minetest.add_particle({
			pos = {x=pos2.x, y=pos2.y-0.3, z=pos2.z},
			expirationtime = math.random(),
			size = math.random()*5,
			vertical = false,
			texture = "poly_brazier_flame.png",
			glow=8,
		})
		end
		local timer=minetest.get_node_timer(pos)
		timer:set(0.1, 0)
	end
})

minetest.register_node("poly_decor:crate_connected",{
	description="Wooden Crate",
	tiles={"poly_crate_border.png","poly_vertical_planks.png"},
	drawtype="glasslike_framed",
	paramtype="light",
	sunlight_propagates=true,
	groups={choppy=3},
	sounds=default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output="poly_decor:crate_connected 20",
	recipe={
		{"default:stick", "group:tree", "default:stick"},
		{"default:stick", "default:chest", "default:stick"},
		{"default:stick", "group:tree", "default:stick"}
	}
})

minetest.register_node("poly_decor:basic_carpet",{
	description="Blue Mat",
	drawtype="nodebox",
	tiles={"poly_carpet_a.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={-0.5,-0.5,-0.5,0.5,-0.45,0.5},
	},
	groups={snappy=3},
	on_place=place_rotated.slab,
	sounds=default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output="poly_decor:basic_carpet 15",
	recipe={
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"},
		{"poly_decor:rope", "dye:blue", "poly_decor:rope"},
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"}
	}
})

minetest.register_node("poly_decor:basic_carpet2",{
	description="Red Mat",
	drawtype="nodebox",
	tiles={"poly_carpet_b.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={-0.5,-0.5,-0.5,0.5,-0.45,0.5},
	},
	groups={snappy=3},
	on_place=place_rotated.slab,
	sounds=default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output="poly_decor:basic_carpet2 15",
	recipe={
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"},
		{"poly_decor:rope", "dye:red", "poly_decor:rope"},
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"}
	}
})

minetest.register_node("poly_decor:basic_carpet3",{
	description="Black Mat",
	drawtype="nodebox",
	tiles={"poly_carpet_c.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={-0.5,-0.5,-0.5,0.5,-0.45,0.5},
	},
	groups={snappy=3},
	on_place=place_rotated.slab,
	sounds=default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output="poly_decor:basic_carpet3 15",
	recipe={
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"},
		{"poly_decor:rope", "dye:black", "poly_decor:rope"},
		{"poly_decor:rope", "poly_decor:rope", "poly_decor:rope"}
	}
})

minetest.register_node("poly_decor:rod", {
	description = "Iron Rod",
	tiles = {"poly_iron.png"},
	sounds = visionLib.Sound.Metal(),
	groups={cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.5, 0.05},
		},
	},
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
	paramtype2="facedir",
	on_place=place_rotated.log,
})

minetest.register_craft({
	output="poly_decor:rod 10",
	recipe={
		{"default:stick"},
		{"default:steel_ingot"},
		{"default:steel_ingot"}
	}
})

minetest.register_node("poly_decor:rail", {
	description = "Iron Railing",
	tiles = {"poly_iron.png"},
	sounds = visionLib.Sound.Metal(),
	connects_to={"group:cracky", "group:choppy"},
	groups={cracky=3},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.5, 0.05},
		},
		connect_front = {{-0.036, -0.45, -0.5, 0.036, -0.35, 0.036},{-0.036, -0.036, -0.5, 0.036, 0.036, 0.036},{-0.036, 0.3, -0.5, 0.036, 0.4, 0.036}},
		connect_back =  {{-0.036, -0.45, 0.5, 0.036, -0.35, 0.036},{-0.036, -0.036, 0.5, 0.036, 0.036, 0.036},{-0.036, 0.3, 0.5, 0.036, 0.4, 0.036}},
		connect_left =  {{-0.036, -0.45, -0.036, -0.5, -0.35, 0.036},{-0.036, -0.036, -0.036, -0.5, 0.036, 0.036},{-0.036, 0.3, -0.036, -0.5, 0.4, 0.036}},
		connect_right =  {{-0.036, -0.45, -0.036, 0.5, -0.35, 0.036},{-0.036, -0.036, -0.036, 0.5, 0.036, 0.036},{-0.036, 0.3, -0.036, 0.5, 0.4, 0.036}},
	},
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	}
})

minetest.register_craft({
	output="poly_decor:rail 7",
	recipe={
		{"poly_decor:rod"},
		{"default:steel_ingot"},
		{"default:steel_ingot"}
	}
})

minetest.register_node("poly_decor:chain", {
	description = "Iron Chain",
	tiles = {"poly_iron_chain.png"},
	sounds = visionLib.Sound.Metal(),
	groups={snappy=3},
	drawtype = "plantlike",
	paramtype = "light",
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
})

minetest.register_craft({
	output="poly_decor:chain 3",
	recipe={
		{"poly_decor:rod"},
		{"default:steel_ingot"},
		{"poly_decor:rod"}
	}
})

minetest.register_node("poly_decor:chain2", {
	description = "Iron Chain Tether",
	tiles = {"poly_iron_chain2.png"},
	sounds = visionLib.Sound.Metal(),
	groups={snappy=3},
	drawtype = "plantlike",
	paramtype = "light",
	selection_box={
		type="fixed",
		fixed={-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
})

minetest.register_craft({
	output="poly_decor:chain2",
	recipe={
		{"default:steel_ingot"},
		{"poly_decor:chain"}
	}
})

minetest.register_node("poly_decor:crate_connected2",{
	description="Red Container",
	tiles={"poly_container_red_border.png","poly_container_red.png"},
	drawtype="glasslike_framed",
	paramtype="light",
	sunlight_propagates=true,
	groups={cracky=3},
	sounds=visionLib.Sound.Metal(),
})

minetest.register_craft({
	output="poly_decor:crate_connected2 20",
	recipe={
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"dye:red", "default:chest", "dye:red"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_node("poly_decor:crate_connected3",{
	description="Blue Container",
	tiles={"poly_container_blue_border.png","poly_container_blue.png"},
	drawtype="glasslike_framed",
	paramtype="light",
	sunlight_propagates=true,
	groups={cracky=3},
	sounds=visionLib.Sound.Metal(),
})

minetest.register_craft({
	output="poly_decor:crate_connected3 20",
	recipe={
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"dye:blue", "default:chest", "dye:blue"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	}
})

minetest.register_node("poly_decor:floorboards",{
	description="Floorboards",
	drawtype="nodebox",
	tiles={"poly_floorboards.png"},
	paramtype="light",
	paramtype2="facedir",
	node_box={
		type="fixed",
		fixed={-0.5,-0.5,-0.5,0.5,-0.45,0.5},
	},
	groups={choppy=3},
	on_place=place_rotated.slab,
	sounds=default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output="poly_decor:floorboards 15",
	recipe={
		{"poly_decor:crate_connected", "default:stick", "poly_decor:crate_connected"},
		{"default:stick", "", "default:stick"},
		{"poly_decor:crate_connected", "default:stick", "poly_decor:crate_connected"}
	}
})

doors.register("polydecor_door_red_container", {
	tiles = {{name = "poly_door_container1.png", backface_culling = true}},
	description = "Red Container Door",
	inventory_image = "poly_door_item_container1.png",
	protected = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	recipe = {
		{"poly_decor:crate_connected2", "default:steel_ingot"},
		{"poly_decor:crate_connected2", "default:steel_ingot"},
		{"poly_decor:crate_connected2", "default:steel_ingot"},
	}
})

doors.register("polydecor_door_blue_container", {
	tiles = {{name = "poly_door_container2.png", backface_culling = true}},
	description = "Blue Container Door",
	inventory_image = "poly_door_item_container2.png",
	protected = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
	sound_open = "doors_steel_door_open",
	sound_close = "doors_steel_door_close",
	recipe = {
		{"poly_decor:crate_connected3", "default:steel_ingot"},
		{"poly_decor:crate_connected3", "default:steel_ingot"},
		{"poly_decor:crate_connected3", "default:steel_ingot"},
	}
})

minetest.register_node("poly_decor:blome_glass",{
	description="Dark Glass",
	tiles={"poly_dark_glass.png","poly_dark_glass_detail.png"},
	drawtype="glasslike_framed",

	sunlight_propagates=false,
	use_texture_alpha=true,
	groups={cracky=3},
	sounds=visionLib.Sound.Glass(),
})

minetest.register_craft({
	type="cooking",
	output="poly_decor:blome_glass",
	recipe="poly_decor:blome",
})


minetest.register_craft({
	output="poly_decor:blome_glass_pane 16",
	recipe={
		{"poly_decor:blome_glass", "poly_decor:blome_glass"}
	}
})

minetest.register_node("poly_decor:blome_glass_pane", {
	description = "Dark Glass Pane",
	tiles = {"poly_blome.png","poly_blome.png",{name="poly_dark_glass_detail.png^poly_dark_glass2.png", backface_culling = true}},
	connects_to={"poly_decor:blome_glass_pane", "poly_decor:blome_glass"},
	sounds = visionLib.Sound.Glass(),
	groups={choppy=3},
	drawtype = "nodebox",

	sunlight_propagates=false,
	use_texture_alpha=true,
	node_box = {
		type = "connected",
		fixed = {
			{-0.05, -0.5, -0.05, 0.05, 0.5, 0.05},
		},
		connect_front = {-0.05, -0.5, -0.5, 0.05, 0.5, 0.05},
		connect_back =  {-0.05, -0.5, 0.5, 0.05, 0.5, -0.05},
		connect_left =  {0.05, -0.5, -0.05, -0.5, 0.5, 0.05},
		connect_right =  {-0.05, -0.5, -0.05, 0.5, 0.5, 0.05},
	},
})

minetest.register_node("poly_decor:void_glass",{
	description="Sky Glass",
	inventory_image=minetest.inventorycube("poly_sky_glass.png"),
	tiles={"poly_blome.png","poly_dark_glass_detail.png",{name="poly_blome.png", backface_culling = false},{name="poly_blome.png", backface_culling = false},{name="poly_blome.png", backface_culling = false},{name="poly_blome.png", backface_culling = false}},
	sunlight_propagates=true,
	paramtype="light",
	use_texture_alpha=true,
	groups={cracky=3},
	sounds=visionLib.Sound.Glass(),
})

minetest.register_craft({
	output="poly_decor:void_glass",
	recipe={
		{"poly_decor:blome", "poly_decor:blome", "poly_decor:blome"},
		{"poly_decor:blome", "poly_decor:blome_glass", "poly_decor:blome"},
		{"default:diamondblock", "default:diamondblock", "default:diamondblock"}
	}
})

minetest.register_node("poly_decor:spikes", {
	description = "Iron Spikes",
	tiles = {"poly_iron.png"},
	sounds = visionLib.Sound.Metal(),
	groups={cracky=3, fall_damage_add_percent=150},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0, 0.1875, 0},
			{0.1875, -0.5, 0.125, 0.25, 0.125, 0.1875},
			{0.1875, -0.5, -0.375, 0.25, 0.0625, -0.3125},
			{-0.375, -0.5, -0.3125, -0.3125, -0.0625, -0.25},
			{-0.25, -0.5, 0.25, -0.1875, 0.0625, 0.3125},
			{0.0625, -0.5, 0.3125, 0.125, 0, 0.375},
			{0.375, -0.5, 0.3125, 0.4375, -0.0625, 0.375},
			{0.375, -0.5, -0.375, 0.4375, -0.1875, -0.3125},
			{-0.4375, -0.5, -0.375, -0.375, -0.1875, -0.3125},
			{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
		}
	},
	selection_box={
		type="fixed",
		fixed={-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5}
	},
	paramtype2="facedir",
	on_place=place_rotated.log,
})

minetest.register_craft({
	output="poly_decor:spikes 3",
	recipe={
		{"poly_decor:rod","poly_decor:rod","poly_decor:rod"}
	}
})

minetest.register_node("poly_decor:trampoline", {
	description = "Bounce Pad",
	tiles = {"poly_carpet_c.png","poly_iron.png","poly_iron.png","poly_iron.png","poly_iron.png","poly_iron.png",},
	sounds = visionLib.Sound.Metal(),
	groups={cracky=3, fall_damage_add_percent=-100, bouncy=90},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2="facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.125, -0.5, 0.5, 0.25, 0.5},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.125, -0.3125},
			{0.3125, -0.5, -0.4375, 0.4375, 0.125, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.125, 0.4375},
			{-0.4375, -0.5, 0.3125, -0.3125, 0.125, 0.4375},
		}
	},
	on_place=place_rotated.log,
})

minetest.register_craft({
	output="poly_decor:trampoline",
	recipe={
		{"poly_decor:rod","poly_decor:basic_carpet3","poly_decor:rod"}
	}
})

minetest.register_node("poly_decor:trampoline2", {
	description = "Launch Pad",
	tiles = {"poly_carpet_d.png","poly_iron.png","poly_iron.png","poly_iron.png","poly_iron.png","poly_iron.png",},
	sounds = visionLib.Sound.Metal(),
	groups={cracky=3, fall_damage_add_percent=-100, bouncy=200},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2="facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.125, -0.5, 0.5, 0.25, 0.5},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.125, -0.3125},
			{0.3125, -0.5, -0.4375, 0.4375, 0.125, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.125, 0.4375},
			{-0.4375, -0.5, 0.3125, -0.3125, 0.125, 0.4375},
		}
	},
	on_place=place_rotated.log,
})

minetest.register_craft({
	output="poly_decor:trampoline2",
	recipe={
		{"poly_decor:froststone","poly_decor:trampoline","default:mese"}
	}
<<<<<<< HEAD
})

stoneType("shimmerite", "Gilt Shimmerite", {cracky=3})
stoneType("shimmerite_2", "Umbral Shimmerite", {cracky=3})

minetest.register_craft({
	output="poly_decor:shimmerite 25",
	recipe={
		{"poly_decor:enamel", "poly_decor:enamel", "poly_decor:enamel"},
		{"poly_decor:enamel", "default:mese", "poly_decor:enamel"},
		{"poly_decor:enamel", "poly_decor:enamel", "poly_decor:enamel"}
	}
})

minetest.register_craft({
	output="poly_decor:shimmerite_2 25",
	recipe={
		{"poly_decor:blome", "poly_decor:blome", "poly_decor:blome"},
		{"poly_decor:blome", "default:diamond", "poly_decor:blome"},
		{"poly_decor:blome", "poly_decor:blome", "poly_decor:blome"}
	}
=======
>>>>>>> 4eeb0fbbbbcd586118ea048167407e9aeb14bfec
})