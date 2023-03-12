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

Normal.SetItemSlot(basf,3,2,upF,"input");

Normal.SetRightArrowSlot(basf,4,2);

Normal.SetItemSlot(basf,5,2,downF,"output");

Normal.SetItemSlot(basf,1,4,backF,"fuel");

Normal.SetFireSlot(basf,3,3);

Recipe.BasicFurnaceRecipeAdder(<contenttweaker:crude_iron>*2,<ore:highIron>,<ore:dustCoal>,1000,1000);
Recipe.BasicFurnaceRecipeAdder(<contenttweaker:crude_iron>,<ore:lowIron>,<ore:dustCoal>,1000,1000);
Recipe.BasicFurnaceRecipeAdder(<contenttweaker:melting_iron>,<contenttweaker:crude_iron>,<ore:dustCoal>,1000,1000);
Recipe.BasicFurnaceRecipeAdder(<contenttweaker:wrought_iron>,<minecraft:iron_ingot>,<ore:dustCoal>,1000,1000);
Recipe.BasicFurnaceRecipeAdder(<techreborn:ingot:4>,<ore:oreCopper>,<ore:dustCoal>,1000,1000);
Recipe.BasicFurnaceRecipeAdder(<contenttweaker:steam_ingot>,<techreborn:ingot:2>,<ore:dustCoal>,1000,1000);
