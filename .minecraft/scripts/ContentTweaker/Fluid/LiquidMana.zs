#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var Mana as Fluid = VanillaFactory.createFluid("mana", 0x1C9DCB);
Mana.material=<blockmaterial:water>;
Mana.luminosity=10;
Mana.register();