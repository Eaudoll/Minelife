#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var Steam as Fluid = VanillaFactory.createFluid("steam", 0x1C9DCB);
Steam.material=<blockmaterial:water>;
Steam.luminosity=0;
Steam.gaseous=true;
Steam.stillLocation="contenttweaker:fluid/steam_still";
Steam.flowingLocation="contenttweaker:fluid/steam_flow";
Steam.vaporize=true;
Steam.temperature=1000;
Steam.colorize=false;
Steam.register();