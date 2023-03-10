#loader contenttweaker
#priority 100

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tabm as CreativeTab = VanillaFactory.createCreativeTab("magical_craft", <item:contenttweaker:magical_gem>);
tabm.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:magical_craft>;
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
 "wind_rod","water_rod","wood_rod","flash_rod","thunder_rod","livingrock_plate","gem_shard"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:magical_craft>;
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
