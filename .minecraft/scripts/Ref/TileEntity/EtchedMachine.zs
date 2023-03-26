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

val etch = <assembly:etched_machine>;

Normal.SetItemSlot(etch,3,2,upF,"input");

Normal.SetItemSlot(etch,5,2,downF,"output");

Normal.SetItemSlot(etch,0,4,backF,"energy");

Normal.SetRightArrowSlot(etch,4,2);

Recipe.EtchedMachineAdder(<prodigytech:pattern_circuit_crude>,<ore:plateIron>,1000,<prodigytech:energion_dust>);

