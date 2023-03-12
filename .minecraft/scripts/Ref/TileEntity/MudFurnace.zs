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

val Mud = <assembly:mud_furnace>;

Normal.SetItemSlot(Mud,3,2,upF,"input");

Normal.SetItemSlot(Mud,5,2,downF,"output");

Normal.SetItemSlot(Mud,3,4,backF,"fuel");

Normal.SetFireSlot(Mud,3,3);

Normal.SetRightArrowSlot(Mud,4,2);

var SFood as IItemStack[]= [<minecraft:chicken>,<minecraft:potato>,<minecraft:rabbit>,<minecraft:mutton>,<minecraft:porkchop>,<minecraft:beef>,<familiarfauna:turkey_leg_raw>,<familiarfauna:venison_raw>];

for i, SFoods in SFood{
       var CFood as IItemStack[]= [<minecraft:cooked_chicken>,<minecraft:baked_potato>,<minecraft:cooked_rabbit>,<minecraft:cooked_mutton>,<minecraft:cooked_porkchop>,<minecraft:cooked_beef>,<familiarfauna:turkey_leg_cooked>,<familiarfauna:venison_cooked>];
       Recipe.MudFurnaceAdder(CFood[i],SFoods,<ore:normalFuel>,500,500);
       }
