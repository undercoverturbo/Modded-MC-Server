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

mods.initialinventory.InvHandler.addStartingItem("akashic_tome", <item:akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {astralsorcery: {id: "astralsorcery:tome" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Astral Tome" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Astral Tome\"}]}" as string}}}, theoneprobe: {id: "theoneprobe:probenote" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "The One Probe Read Me" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"The One Probe Read Me\"}]}" as string}}}, pneumaticcraft: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "PNC:R Manual" as string}, "patchouli:book": "pneumaticcraft:book" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"PNC:R Manual\"}]}" as string}}}, immersiveengineering: {id: "immersiveengineering:manual" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Engineer's Manual" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Engineer's Manual\"}]}" as string}}}, naturesaura: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Book of Natural Aura" as string}, "patchouli:book": "naturesaura:book" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Book of Natural Aura\"}]}" as string}}}, woot: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Woot Guide" as string}, "patchouli:book": "woot:wootguide" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Woot Guide\"}]}" as string}}}, bigreactors: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "The Extreme Book" as string}, "patchouli:book": "bigreactors:erguide" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"The Extreme Book\"}]}" as string}}}, modularrouters: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Modular Routers Manual" as string}, "patchouli:book": "modularrouters:book" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Modular Routers Manual\"}]}" as string}}}, botania: {id: "botania:lexicon" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Lexica Botania" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Lexica Botania\"}]}" as string}}}, ars_nouveau: {id: "ars_nouveau:worn_notebook" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Worn Notebook" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Worn Notebook\"}]}" as string}}}, bloodmagic: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Sanguine Scientiem" as string}, "patchouli:book": "bloodmagic:guide" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Sanguine Scientiem\"}]}" as string}}}, rftoolsbase: {id: "rftoolsbase:manual" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Technology Guide" as string}, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Technology Guide\"}]}" as string}}}, cyclic: {id: "patchouli:guide_book" as string, Count: 1 as byte, tag: {"akashictome:displayName": {text: "Cyclic Guidebook" as string}, "patchouli:book": "cyclic:cyclic_guide_book" as string, "akashictome:is_morphing": 1 as byte, display: {Name: "{\"translate\":\"akashictome.sudo_name\",\"with\":[{\"color\":\"green\",\"text\":\"Cyclic Guidebook\"}]}" as string}}}}}));