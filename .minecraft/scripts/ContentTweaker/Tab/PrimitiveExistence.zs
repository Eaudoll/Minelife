#priority 100
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tab1 as CreativeTab = VanillaFactory.createCreativeTab("primitive_existence", <item:contenttweaker:branch>);
tab1.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:primitive_existence>;
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

var common as string[] =
["branch","gravel","flint_shard","stone_shard","diorite_stone_shard","granite_stone_shard","andesite_stone_shard","better_stone_plate","wrought_iron_plate","damascus_steel_ingot"
,"crude_iron","crude_steel","melting_iron","dark_iron","wrought_iron","wrought_marterial"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}

//block

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:primitive_existence>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.register();
}

var ore as string[] = [
   "better_stone"
];

for Ore in ore {
    blockAdder(Ore,<blockmaterial:rock>,"SOLID", 5.0, 1.0, "pickaxe");
}

//tool

function toolAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:primitive_existence>;
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.glowing = glowing;
    item.toolLevel = lvl;
    item.register();
}

var tools as string[] =
["primary_hammer"];
for Tool in  tools {
    toolAdder(Tool, "common", 10, 64, 1, false);
}