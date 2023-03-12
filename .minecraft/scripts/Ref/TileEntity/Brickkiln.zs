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

Default.NineSlotsSet(brk);

Normal.SetRightArrowSlot(brk,4,2);

Normal.SetItemSlot(brk,5,2,downF,"output");

Normal.SetItemSlot(brk,8,4,upF,"fuel");

Normal.SetFireSlot(brk,2,4);

Recipe.BrickkilnRecipeAdder(<minecraft:clay>,<minecraft:clay>,<minecraft:brick>*3);
Recipe.BrickkilnRecipeAdder(<minecraft:brick>,<contenttweaker:graphite>,<contenttweaker:black_brick>*3);
Recipe.BrickkilnRecipeAdder(<contenttweaker:better_stone_plate>,<contenttweaker:black_brick>,<contenttweaker:furnace_brick>);
