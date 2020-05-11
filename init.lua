

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