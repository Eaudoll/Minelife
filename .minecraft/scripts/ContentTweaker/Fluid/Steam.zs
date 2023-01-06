#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var steam as Fluid = VanillaFactory.createFluid("steam", 0xFF69B4);
steam.temperature = 200;
steam.viscosity = 2000;
steam.density = 1500;
steam.luminosity = 0;
steam.stillLocation = "contenttweaker:fluid/steam_still";
steam.flowingLocation = "contenttweaker:fluid/steam_flow";
steam.gaseous = true;
steam.colorize = false;
steam.register();