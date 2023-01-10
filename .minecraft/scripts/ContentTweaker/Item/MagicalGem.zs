#loader contenttweaker
import mods.randomtweaker.cote.ManaItem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

var mg as ManaItem = VanillaFactory.createManaItem("magical_gem",250000);
mg.creativeTab=<creativetab:magical_craft>;
mg.register();