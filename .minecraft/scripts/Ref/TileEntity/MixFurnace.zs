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

val Mix = <assembly:mix_furnace>;

Normal.SetItemSlot(Mix,4,2,upF,"input1");

Normal.SetItemSlot(Mix,6,2,downF,"output");

Normal.SetItemSlot(Mix,3,2,frontF,"input2");

Normal.SetItemSlot(Mix,1,4,backF,"fuel");

Normal.SetFireSlot(Mix,4,3);

Normal.SetRightArrowSlot(Mix,5,2);

Recipe.MixFurnaceAdder(<techreborn:ingot:2>,<ore:ingotCopper>*3,<ore:ingotTin>,<ore:normalFuel>,1200,1000);




