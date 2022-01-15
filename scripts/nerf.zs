//These are high-durability metals. They can't be molten in a mere normal furnace. Use a smeltery or high oven instead.
furnace.remove(<minecraft:iron_ingot>);
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<basemetals:platinum_ingot>);
furnace.remove(<basemetals:platinum_nugget>);
furnace.remove(<basemetals:steel_ingot>);
furnace.remove(<basemetals:steel_nugget>);
furnace.remove(<basemetals:invar_ingot>);
furnace.remove(<basemetals:invar_nugget>);
furnace.remove(<basemetals:coldiron_ingot>);
furnace.remove(<basemetals:coldiron_nugget>);
furnace.remove(<basemetals:adamantine_ingot>);
furnace.remove(<basemetals:adamantine_nugget>);
furnace.remove(<basemetals:mithril_ingot>);
furnace.remove(<basemetals:mithril_nugget>);
furnace.remove(<basemetals:starsteel_ingot>);
furnace.remove(<basemetals:starsteel_nugget>);

//The previous lines make the smeltery unable to smelt poor versions of the ores. Fix:
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 48,<poormetals:poor_iron_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 48,<poormetals:poor_platinum_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:coldiron> * 48,<poormetals:poor_cold_iron_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:adamantine> * 48,<poormetals:poor_adamantine_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:starsteel> * 48,<poormetals:poor_starsteel_ore>);

//Fixing the infinite obsidian loop of base metals
recipes.remove(<minecraft:obsidian>);
recipes.addShaped(<basemetals:obsidian_ingot>, [[<basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>],[<basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>], [<basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>, <basemetals:obsidian_nugget>]]);
recipes.addShaped(<minecraft:obsidian>, [[null, null, null],[<basemetals:obsidian_ingot>, <basemetals:obsidian_ingot>, null], [<basemetals:obsidian_ingot>, <basemetals:obsidian_ingot>, null]]);

//Deep dark is too cheap to get to.
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>,[[<extrautils2:compressedcobblestone:1>,<extrautils2:compressedcobblestone:1>,<extrautils2:compressedcobblestone:1>],[<extrautils2:compressedcobblestone:1>,null,<extrautils2:compressedcobblestone:1>],[<extrautils2:compressedcobblestone:1>,<extrautils2:compressedcobblestone:1>,<extrautils2:compressedcobblestone:1>]]);
//Mining world is too cheap to get to.
recipes.remove(<aroma1997sdimension:miningmultitool>);
recipes.addShaped(<aroma1997sdimension:miningmultitool>,[[<minecraft:iron_block>,<basemetals:silver_pickaxe>,<minecraft:iron_block>],[null,<minecraft:flint_and_steel>,null],[null,<minecraft:stick>,null]]);

//Cheap crackhammers are banned, so bronze must be available.
//The only purpose for dusts is blending. Now nuggets can be blended too. Leaving dusts in for crackhammer compatibility.
recipes.addShapeless(<basemetals:brass_blend>*4,[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotZinc>]);
recipes.addShapeless(<basemetals:bronze_blend>*4,[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotTin>]);
recipes.addShapeless(<basemetals:cupronickel_blend>*4,[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotNickel>]);
recipes.addShapeless(<basemetals:electrum_blend>,[<ore:ingotGold>,<ore:ingotSilver>]);
recipes.addShapeless(<basemetals:invar_blend>,[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotNickel>]);
recipes.addShapeless(<basemetals:pewter_blend>,[<ore:ingotTin>,<ore:ingotCopper>,<ore:ingotLead>]);
recipes.addShapeless(<basemetals:aquarium_blend>,[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotZinc>,<minecraft:prismarine_crystals>]);
recipes.addShapeless(<basemetals:mithril_blend>,[<ore:ingotSilver>,<basemetals:coldiron_ingot>,<ore:ingotMercury>]);

//Crackhammers literally double metals. They must not be cheap.
mods.jei.JEI.removeAndHide(<basemetals:wood_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:stone_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:tin_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:silver_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:lead_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:copper_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:antimony_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:brass_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:cupronickel_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:electrum_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:pewter_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:gold_crackhammer>);
mods.jei.JEI.removeAndHide(<basemetals:quartz_crackhammer>);

//I don't need that many sources of charcoal block recipes.
//mods.jei.JEI.removeAndHide(<basemetals:charcoal_block>);

//The recipe conflicts with vanilla quartz block.
mods.jei.JEI.removeAndHide(<basemetals:quartz_trapdoor>);

//Dirty dusts are not used for anything as far as I can tell
mods.jei.JEI.removeAndHide(<basemetals:antimony_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:bismuth_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:nickel_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:zinc_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:adamantine_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:coldiron_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:platinum_powder_dirty>);
mods.jei.JEI.removeAndHide(<basemetals:starsteel_powder_dirty>);

//Making horse armors give the same amount of metal when molten as it takes to make them.
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:iron_horse_armor>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_horse_armor>);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 3024,<minecraft:iron_horse_armor>);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 3024,<minecraft:golden_horse_armor>);

//Foodexpansion dough should also accept clay buckets.
//recipes.addShapeless(<foodexpansion:itemdough>*4, [<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<minecraft:wheat>,<claybucket:claybucket:1>.transformReplace(<claybucket:claybucket>)]);

//Adding a recipe for gunpowder. Expensive, but farmable.
recipes.addShapeless(<minecraft:gunpowder>*4,[<minecraft:coal>|<minecraft:coal:1>,<minecraft:coal>|<minecraft:coal:1>,<minecraft:blaze_powder>,<minecraft:dye:15>]);

recipes.remove(<forestry:apiarist_bag>);
recipes.remove(<forestry:lepidopterist_bag>);
recipes.remove(<forestry:miner_bag>);
recipes.remove(<forestry:digger_bag>);
recipes.remove(<forestry:adventurer_bag>);
recipes.remove(<forestry:forester_bag>);
recipes.remove(<forestry:hunter_bag>);
recipes.remove(<forestry:builder_bag>);

recipes.addShaped(<forestry:adventurer_bag>*2,[[<minecraft:string>,<ore:wool>,<minecraft:string>],[<ore:wool>,<minecraft:purple_shulker_box>,<ore:wool>],[<minecraft:string>,<ore:wool>,<minecraft:string>]]);

recipes.addShapeless(<forestry:apiarist_bag>,[<forestry:adventurer_bag>,<forestry:bee_chest>]);
recipes.addShapeless(<forestry:lepidopterist_bag>,[<forestry:adventurer_bag>,<forestry:butterfly_chest>]);
recipes.addShapeless(<forestry:miner_bag>,[<forestry:adventurer_bag>,<ore:ingotIron>,<ore:ingotIron>]);
recipes.addShapeless(<forestry:digger_bag>,[<forestry:adventurer_bag>,<ore:stone>,<ore:stone>]);
recipes.addShapeless(<forestry:forester_bag>,[<forestry:adventurer_bag>,<ore:logWood>,<ore:logWood>]);
recipes.addShapeless(<forestry:hunter_bag>,[<forestry:adventurer_bag>,<minecraft:feather>,<minecraft:feather>]);
recipes.addShapeless(<forestry:builder_bag>,[<forestry:adventurer_bag>,<minecraft:clay_ball>,<minecraft:clay_ball>]);

//Adding a recipe to turn gravel into cobblestone. An attempt at making crafting work without immediately getting a pickaxe.
recipes.addShapeless(<minecraft:cobblestone>,[<minecraft:gravel>,<minecraft:gravel>,<minecraft:gravel>,<minecraft:gravel>]);

//Removing all mold recipes because they cause huge lag when crafting. Since foundry is useless without them, it is removed too.
mods.jei.JEI.removeAndHide(<expindustry:casting_mold>);
mods.jei.JEI.removeAndHide(<expindustry:machine_foundry>);
