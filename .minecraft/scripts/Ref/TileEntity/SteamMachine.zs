#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;
import mods.requious.Assembly;
import scripts.Ref.Function.Normal;
import scripts.Ref.Function.Default;
import scripts.Ref.Function.Recipe;


val machines as Assembly[] = [<assembly:steam_spinning_machine>,<assembly:steam_grinder_machine>,<assembly:steam_compressor_machine>,<assembly:steam_fire_furnace>];

for i ,machine in machines{
    Default.SteamMachine(machine);
    }

Recipe.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:1>,<techreborn:ingot>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:34>,<techreborn:ingot:9>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:27> ,<ore:ingotIron>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:14>,<ore:ingotCopper>,500);
Recipe.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:53>,<ore:ingotTin>,500);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot>,<contenttweaker:aluminum_ore>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:9>,<contenttweaker:nickel_ore>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:12> ,<ore:ingotIron>,2000);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:gold_ingot> ,<minecraft:gold_ore>,1500);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:11> ,<techreborn:ore:13>,1500);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:iron_ingot>*2,<ore:highIron>,1000);
Recipe.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:iron_ingot>,<ore:lowIron>,1000);
