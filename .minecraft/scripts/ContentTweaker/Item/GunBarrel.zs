#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import crafttweaker.item.IItemDefinition;

function itemAdder(name as string, rarity as string, maxdamage as int, maxstacksize as int, lvl as int, glowing as bool, isTool as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab =<creativetab:archaicguns>;
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
["long_barrel","short_barrel","middel_barrel","gun_stick"];
for Common in common {
    itemAdder(Common, "common", -1, 64, -1, false, false);
}