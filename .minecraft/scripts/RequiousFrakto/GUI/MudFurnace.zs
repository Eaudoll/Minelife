import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var ir = <assembly:mud_furnace>;

ir.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input1");
ir.setItemSlot(3, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("fuel");
ir.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
ir.setDurationSlot(3,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");
ir.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");

ir.setJEIItemSlot(3,2,"input1");
ir.setJEIItemSlot(3,4,"fuel");
ir.setJEIItemSlot(5,2,"output");
ir.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
ir.setJEIDurationSlot(3,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));

function MudFurnaceAdder(OutPut as IItemStack,Main as IIngredient,Material as IIngredient,FireTime as int,Duration as int)
{

var mud = <assembly:mud_furnace>;

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input1",Main)
.requireItem("fuel",Material)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

mud.addRecipe(recipe);
mud.addJEIRecipe(recipe);

}



var SFood as IItemStack[]= [<minecraft:chicken>,<minecraft:potato>,<minecraft:rabbit>,<minecraft:mutton>,<minecraft:porkchop>,<minecraft:beef>,<familiarfauna:turkey_leg_raw>,<familiarfauna:venison_raw>];

for i, SFoods in SFood{
       var CFood as IItemStack[]= [<minecraft:cooked_chicken>,<minecraft:baked_potato>,<minecraft:cooked_rabbit>,<minecraft:cooked_mutton>,<minecraft:cooked_porkchop>,<minecraft:cooked_beef>,<familiarfauna:turkey_leg_cooked>,<familiarfauna:venison_cooked>];
       MudFurnaceAdder(CFood[i],SFoods,<ore:normalFuel>,500,500);
       }





