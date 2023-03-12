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

function NineSlotsSet(Machine as Assembly){

val hengs as int[] = [1,2,3,1,2,3,1,2,3]; 

for i, heng in hengs{

       val zongs as int[] = [1,1,1,2,2,2,3,3,3];
       val numbers as string[] = [1,2,3,4,5,6,7,8,9];
       Normal.SetItemSlot(Machine,heng,zongs[i],allF,"input"~numbers[i]);

}

}

function AddAward(Assembly as Assembly){

val hengs as int[] = [4,5,6,4,5,6,4,5,6]; 

for i, heng in hengs{

       val zongs as int[] = [1,1,1,2,2,2,3,3,3];
       val numbers as string[] = [1,2,3,4,5,6,7,8,9];
       Normal.SetItemSlot(Assembly,heng,zongs[i],allF,"output"~numbers[i]);

}

Normal.SetItemSlot(Assembly,2,2,allF,"key");

Normal.SetRightArrowSlot(Assembly,3,2);

}


function NormalMachine(Machine as Assembly){

Normal.SetItemSlot(Machine,3,2,upF,"input");

Normal.SetItemSlot(Machine,5,2,downF,"output");

Normal.SetRightArrowSlot(Machine,4,2);

}

function SteamMachine(Machine as Assembly){

Normal.SetItemSlot(Machine,3,2,upF,"input");

Normal.SetItemSlot(Machine,5,2,downF,"output");

Normal.SetRightArrowSlot(Machine,4,2);

Normal.SetItemSlot(Machine,0,4,backF,"water");

Normal.SetItemSlot(Machine,8,4,frontF,"steam");

}