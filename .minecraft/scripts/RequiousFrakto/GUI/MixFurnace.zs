import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;
import mods.requious.Assembly;

var mix = <assembly:mix_furnace>;

mix.setItemSlot(4, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input1");
mix.setItemSlot(1, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input2");       
mix.setDurationSlot(5,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
mix.setDurationSlot(4,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");
mix.setItemSlot(6, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");
mix.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input3");

mix.setJEIItemSlot(4,2,"input1");
mix.setJEIItemSlot(3,2,"input3");
mix.setJEIItemSlot(6,2,"output");
mix.setJEIItemSlot(1,4,"input2");
mix.setJEIDurationSlot(5,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
mix.setJEIDurationSlot(4,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));

//the function to add recipe for this block

function MixFurnaceAdder(OutPut as IItemStack,Main as IIngredient,Material as IIngredient,Fuel as IIngredient,FireTime as int,Duration as int)
{

var mix = <assembly:mix_furnace>;

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input1",Main)
.requireItem("input2",Fuel)
.requireItem("input3",Material)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

mix.addRecipe(recipe);
mix.addJEIRecipe(recipe);

}

MixFurnaceAdder(<techreborn:ingot:2>,<ore:ingotCopper>*3,<ore:ingotTin>,<ore:normalFuel>,1200,1000);
