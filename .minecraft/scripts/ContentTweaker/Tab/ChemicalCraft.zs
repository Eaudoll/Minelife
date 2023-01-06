#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tab1 as CreativeTab = VanillaFactory.createCreativeTab("chemical_craft", <item:minecraft:gunpowder>);
tab1.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:chemical_craft>;
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.glowing = glowing;
    if (isTool) {
        item.toolLevel = lvl;
    } else {
        item.toolLevel = lvl;
    }
    item.register();
}

//common_items
var common as string[] =
[
    "aluminium_hydroxide", "calcium_hydroxide",
    "copper_hydroxide", "copper_sulphate","ferric_hydroxide","ferric_oxide","ferroferric_oxide","magnesium_hydroxide", "manganese_dioxide", "potassium_manganate",
    "sulfur", "potassium_permanganate", "potassium","graphite"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:chemical_craft>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.register();
}

var ore as string[] = [

];

for Ore in ore {
    blockAdder(Ore,<blockmaterial:rock>,"SOLID", 5.0, 2.0, "pickaxe");
}
