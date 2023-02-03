import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var blower as Block = VanillaFactory.createBlock("blower",<blockmaterial:rock>);
blower.creativeTab = <creativetab:steam_tech>;
blower.toolLevel = 1;
blower.toolClass = "axe";
blower.register();