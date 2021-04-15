import crafttweaker.api.item.IItemStack;

// Adds a recepie for chests, using logs
craftingTable.addShaped("log2chest", <item:minecraft:chest> * 4,
	[[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs> ],
	[<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
	[<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]]);
	
// Adds a recepie for hoppers with logs instead of chests
craftingTable.addShaped("easyhopper", <item:minecraft:hopper>,
	[[<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot> ],
	[<item:minecraft:iron_ingot>, <tag:items:minecraft:logs>, <item:minecraft:iron_ingot>],
	[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);
	
// Adds a recepie for sticks using logs
craftingTable.addShapeless("log2stick", <item:minecraft:stick> * 16, [<tag:items:minecraft:logs> ,<tag:items:minecraft:logs>] );

// Changes the recepie for the jamd mining dimension porter
craftingTable.removeRecipe(<item:jamd:mine_portal_block>);
craftingTable.addShaped("new_mine_portal_block", <item:jamd:mine_portal_block>,
	[[<item:minecraft:ender_eye>, <item:minecraft:nether_star>, <item:minecraft:ender_eye> ],
	[<item:minecraft:obsidian>, <item:mekanismtools:netherite_paxel>.anyDamage().transformDamage(), <item:minecraft:obsidian>],
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);
	
// Changes the recepie for the m_d mining dimension porter
craftingTable.removeRecipe(<item:mining_dimension:teleporter>);
craftingTable.addShaped("new_teleporter", <item:mining_dimension:teleporter>,
	[[<item:minecraft:ender_pearl>, <item:minecraft:nether_star>, <item:minecraft:ender_pearl> ],
	[<item:minecraft:obsidian>, <item:mekanismtools:netherite_paxel>.anyDamage().transformDamage(), <item:minecraft:obsidian>],
	[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

// Adds important info about modded portal desyncs
mods.jei.JEI.addInfo(<item:mining_dimension:teleporter>, ["Teleports to a late-game mining dimension for manual mining.",
	"Spawns more ore ores than usual, since you are mining manually!",
	"Includes Mekanism Ores."]);
mods.jei.JEI.addInfo(<item:jamd:mine_portal_block>, ["Teleports to a late-game mining dimension for automated mining.",
	"Includes Mekanism Ores.",
	"Do NOT use this portal in any other dimension than the overworld!",
	"It will desync the dimensions and you might get stuck, while also creating other weirdness!",
	"You will have to use /spawn when you do get stuck."]);
mods.jei.JEI.addInfo(<item:javd:portal_block>, ["Teleports to a void dimension.",
	"Do NOT use this portal in any other dimension than the overworld!",
	"It will desync the dimensions and you might get stuck, while also creating other weirdness!",
	"You will have to use /spawn when you do get stuck."]);

<item:jamd:mine_portal_block>.setDisplayName("Portal to manual-mining-dimension");
<item:mining_dimension:teleporter>.setDisplayName("Portal to automated-mining-dimension");
<item:javd:portal_block>.setDisplayName("Portal to void-dimension");

<item:jamd:mine_portal_block>.addTooltip("Do NOT use this portal in any other dimension than the overworld!");
<item:javd:portal_block>.addTooltip("Do NOT use this portal in any other dimension than the overworld!");

<item:jamd:mine_portal_block>.addShiftTooltip("A dimension with no strucutres for automated mining.", "Portal to automated-mining-dimension");
<item:mining_dimension:teleporter>.addShiftTooltip("A cave world for manual mining.", "Portal to manual-mining-dimension");
<item:javd:portal_block>.addShiftTooltip("A void world for you to play arround with!", "Portal to void-dimension");

<item:jamd:mine_portal_block>.addShiftTooltip("Also works with flying machines, etc.!", "This dimension includes Mekanism Ores.");
<item:mining_dimension:teleporter>.addShiftTooltip("Spawns more ores than usual, since you are mining manually!", "This dimension includes Mekanism Ores.");
<item:javd:portal_block>.addShiftTooltip("Has a day/night cycle to enable solar farms, etc!", "For more Info press SHIFT!");

<item:jamd:mine_portal_block>.addShiftTooltip("See JEI Info tab for more Info!", "For more Info press SHIFT!");
<item:mining_dimension:teleporter>.addShiftTooltip("See JEI Info tab for more Info!", "For more Info press SHIFT!");
<item:javd:portal_block>.addTooltip("See JEI Info tab for more Info!");

//====== Ahashic Tome ======
var completeTome = <item:akashictome:tome>.withTag(
	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			astralsorcery: {
				id: "astralsorcery:tome" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery",
					"akashictome:displayName": {text: "Astral Tome" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Astral Tome\"}]}" as string}
				},
				Damage: 0 as short
			},
			theoneprobe: {
				id: "theoneprobe:probenote" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "theoneprobe",
					"akashictome:displayName": {text: "The One Probe Read Me" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"The One Probe Read Me\"}]}" as string}
				},
				Damage: 0 as short
			},
			pneumaticcraft: {
				id: "patchouli:guide_book" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "pneumaticcraft",
					"akashictome:displayName": {text: "PNC:R Manual" as string},
					"patchouli:book": "pneumaticcraft:book" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"PNC:R Manual\"}]}" as string}
				},
				Damage: 0 as short
			},
			immersiveengineering: {
				id: "immersiveengineering:manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering",
					"akashictome:displayName": {text: "Engineer's Manual" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Engineer's Manual\"}]}" as string}
				},
				Damage: 0 as short
			},
			naturesaura: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "naturesaura",
					"akashictome:displayName": {text: "Book of Natural Aura" as string},
					"patchouli:book": "naturesaura:book" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Book of Natural Aura\"}]}" as string}
				},
				Damage: 0 as short
			},
			woot: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "woot",
					"akashictome:displayName": {text: "Woot Guide" as string},
					"patchouli:book": "woot:wootguide" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Woot Guide\"}]}" as string}
				},
				Damage: 0 as short
			},
			bigreactors: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bigreactors",
					"akashictome:displayName": {text: "The Extreme Book" as string},
					"patchouli:book": "bigreactors:erguide" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"The Extreme Book\"}]}" as string}
				},
				Damage: 0 as short
			},
			modularrouters: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "modularrouters",
					"akashictome:displayName": {text: "Modular Routers Manual" as string},
					"patchouli:book": "modularrouters:book" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Modular Routers Manual\"}]}" as string}
				},
				Damage: 0 as short
			},
			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania",
					"akashictome:displayName": {text: "Lexica Botania" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Lexica Botania\"}]}" as string}
				},
				Damage: 0 as short
			},
			ars_nouveau: {
				id: "ars_nouveau:worn_notebook",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "ars_nouveau",
					"akashictome:displayName": {text: "Worn Notebook" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Worn Notebook\"}]}" as string}
				},
				Damage: 0 as short
			},
			bloodmagic: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic",
					"akashictome:displayName": {text: "Sanguine Scientiem" as string},
					"patchouli:book": "bloodmagic:guide" as string,
					"akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Sanguine Scientiem\"}]}" as string}
				},
				Damage: 0 as short
			},
			rftoolsbase: {
				id: "rftoolsbase:manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftoolsbase",
					"akashictome:displayName": {text: "Technology Guide" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Technology Guide\"}]}" as string}
				},
				Damage: 0 as short
			},
			cyclic: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cyclic",
					"akashictome:displayName": {text: "Cyclic Guidebook" as string},
					"patchouli:book": "cyclic:cyclic_guide_book" as string,
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cyclic Guidebook\"}]}" as string}
				},
				Damage: 0 as short
			},
			integratedtunnels: {
				id: "integrateddynamics:on_the_dynamics_of_integration" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "integratedtunnels",
					"akashictome:displayName": {text: "On the Dynamics of Integration" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"On the Dynamics of Integration\"}]}" as string}
				},
				Damage: 0 as short
			},
			tconstruct: {
				id: "tconstruct:materials_and_you" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": {text: "Materials and You" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Materials and You\"}]}" as string}
				},
				Damage: 0 as short
			},
			tconstruct_1: {
				id: "tconstruct:puny_smelting" as string,
				Count: 1 as byte,
				tag: {
					mantle: {book: {current_page: "" as string}},
					"akashictome:displayName": {text: "Puny Smelting" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Puny Smelting\"}]}" as string}
				}
			},
			tconstruct_2: {
				id: "tconstruct:mighty_smelting" as string,
				Count: 1 as byte,
				tag: {
					mantle: {book: {current_page: "" as string}},
					"akashictome:displayName": {text: "Mighty Smelting" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Mighty Smelting\"}]}" as string}
				}
			},
			tconstruct_3: {
				id: "tconstruct:tinkers_gadgetry" as string,
				Count: 1 as byte,
				tag: {
					mantle: {book: {current_page: "" as string}},
					"akashictome:displayName": {text: "Tinker's Gadgetry" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Tinker's Gadgetry\"}]}" as string}
				}
			},
			cookingforblockheads: {
				id: "cookingforblockheads:no_filter_edition" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": {text: "Cooking for Blockheads" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cooking for Blockheads\"}]}" as string}
				},
				Damage: 0 as short
			},
			cookingforblockheads_1: {
				id: "cookingforblockheads:recipe_book" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": {text: "Cooking for Blockheads I" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cooking for Blockheads I\"}]}" as string}
				},
				Damage: 0 as short
			},
			cookingforblockheads_2: {
				id: "cookingforblockheads:crafting_book" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:displayName": {text: "Cooking for Blockheads II" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cooking for Blockheads II\"}]}" as string}
					},
				Damage: 0 as short
			},
			powah: {
				id: "powah:book" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "powah",
					"akashictome:displayName": {text: "Manual (Powah!)" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Manual (Powah!)\"}]}" as string}
				}
			}
		}
	}
);

// Add metadata to item
completeTome.setDisplayName("Complete Tome");
completeTome.addTooltip("Contains all basic mod manuals/guides");
mods.jei.JEI.addInfo(completeTome, ["The book of books"]);

// Add the full book to JEI as it's own entry (currently not supported!)
//mods.jei.JEI.addItem("Complete Tome", completeTome);

// 1 akashic tome => 1 complete akashic tome
craftingTable.addShapeless("complete_tome", completeTome, [<item:akashictome:tome>]);

//====== Tooltip for added books ======
var addedBooks = [
	<item:astralsorcery:tome>, 
	<item:theoneprobe:probenote>, 
	<item:patchouli:guide_book>,
	<item:immersiveengineering:manual>,
	<item:botania:lexicon>,
	<item:ars_nouveau:worn_notebook>,
	<item:rftoolsbase:manual>,
	<item:tconstruct:materials_and_you>,
	<item:integrateddynamics:on_the_dynamics_of_integration>,
	<item:tconstruct:puny_smelting>,
	<item:tconstruct:mighty_smelting>,
	<item:tconstruct:tinkers_gadgetry>,
	<item:cookingforblockheads:no_filter_edition>,
	<item:cookingforblockheads:recipe_book>,
	<item:cookingforblockheads:crafting_book>,
	<item:powah:book>
	] as IItemStack[];

for itemBook in addedBooks {
	itemBook.addTooltip("Included within the \"default\" Akashic Tome handed to you at the beginning");
}

// Starting items
mods.initialinventory.InvHandler.addStartingItem("akashic_tome", completeTome);
mods.initialinventory.InvHandler.addStartingItem("bio_comp", <item:naturescompass:naturescompass>);

// Remove cyclics emerald tools and armor
mods.jei.JEI.hideItem(<item:cyclic:emerald_sword>);
craftingTable.removeRecipe(<item:cyclic:emerald_sword>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_pickaxe>);
craftingTable.removeRecipe(<item:cyclic:emerald_pickaxe>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_axe>);
craftingTable.removeRecipe(<item:cyclic:emerald_axe>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_shovel>);
craftingTable.removeRecipe(<item:cyclic:emerald_shovel>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_hoe>);
craftingTable.removeRecipe(<item:cyclic:emerald_hoe>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_boots>);
craftingTable.removeRecipe(<item:cyclic:emerald_boots>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_helmet>);
craftingTable.removeRecipe(<item:cyclic:emerald_helmet>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_chestplate>);
craftingTable.removeRecipe(<item:cyclic:emerald_chestplate>);
mods.jei.JEI.hideItem(<item:cyclic:emerald_leggings>);
craftingTable.removeRecipe(<item:cyclic:emerald_leggings>);

// Make Mekanism's logistics pipes available to the early game
craftingTable.removeRecipe(<item:mekanism:basic_logistical_transporter>);
craftingTable.addShaped("new_mekanism_basic_logistical_transporter_meka", <item:mekanism:basic_logistical_transporter>,
	[[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air> ],
	[<tag:items:forge:ingots/steel>, <item:minecraft:chest>, <tag:items:forge:ingots/steel>],
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.addShapeless("uranium_uranite", <item:powah:uraninite>, [<tag:items:forge:ingots/uranium>, <tag:items:forge:ingots/uranium>, <tag:items:forge:ingots/uranium>, <tag:items:forge:ingots/uranium>] );
craftingTable.addShapeless("uranite_uranium", <item:mekanism:ingot_uranium> * 4, [<item:powah:uraninite>] );
