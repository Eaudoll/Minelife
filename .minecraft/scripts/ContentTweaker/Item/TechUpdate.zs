#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val tecup as Item = VanillaFactory.createItem("tech_update");
tecup.creativeTab = <creativetab:misc>;
tecup.toolClass = "pickaxe";
tecup.register();