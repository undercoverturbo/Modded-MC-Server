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

//mods.jei.JEI.hideItem(<item:minecraft:dirt>);

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
//
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
			tconstruct: {
				id: "tconstruct:book" as string,
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct",
					"akashictome:displayName": {text: "Materials and You" as string},
					"akashictome:is_morphing": 1 as byte,
					display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Materials and You\"}]}" as string}
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
			}
		}
	}
);

//metadata to item
completeTome.setDisplayName("Complete Tome");
completeTome.addTooltip("Contains all basic mod manuals/guides");
mods.jei.JEI.addInfo(completeTome, ["The book of books"]);

//add the full book to JEI as it's own entry
//mods.jei.JEI.addItem("Complete Tome", completeTome);

//1 dirt = book
craftingTable.addShapeless("complete_tome", completeTome, [<item:akashictome:tome>]);

// Starting item
mods.initialinventory.InvHandler.addStartingItem("akashic_tome", completeTome);


//====== Tooltip for added books ======
//
var addedBooks = [
	<item:astralsorcery:tome>, 
	<item:theoneprobe:probenote>, 
	<item:patchouli:guide_book>,
	<item:immersiveengineering:manual>,
	<item:botania:lexicon>,
	<item:ars_nouveau:worn_notebook>,
	<item:rftoolsbase:manual>,
	<item:tconstruct:book>,
	<item:integrateddynamics:on_the_dynamics_of_integration>
	] as IItemStack[];

for itemBook in addedBooks {
	itemBook.addTooltip("Included within the \"default\" Akashic Tome handed to you at the beginning");
}