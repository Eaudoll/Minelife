#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tab1 as CreativeTab = VanillaFactory.createCreativeTab("design_paper", <item:minecraft:paper>);
tab1.register();

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:design_paper>;
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.glowing = glowing;
    item.register();
}

//common_items
var common as string[] =
[
    "steam_compressor","steam_furnace","steam_smelting_furnace","steam_grinder","steam_spinning_machine","long_gun","middel_gun","short_gun"
];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}
