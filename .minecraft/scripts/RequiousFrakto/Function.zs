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

function NineSlotsSet(Assembly as Assembly){

var machine = Assembly;

machine.setItemSlot(1, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input1");

machine.setItemSlot(2, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input2");

machine.setItemSlot(3, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input3");

machine.setItemSlot(1, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input4");

machine.setItemSlot(2, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input5");

machine.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input6");

machine.setItemSlot(1, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input7");

machine.setItemSlot(2, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input8");

machine.setItemSlot(3, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input9");

machine.setJEIItemSlot(1,1,"input1");
machine.setJEIItemSlot(2,1,"input2");
machine.setJEIItemSlot(3,1,"input3");
machine.setJEIItemSlot(1,2,"input4");
machine.setJEIItemSlot(2,2,"input5");
machine.setJEIItemSlot(3,2,"input6");
machine.setJEIItemSlot(1,3,"input7");
machine.setJEIItemSlot(2,3,"input8");
machine.setJEIItemSlot(3,3,"input9");

}



function AddAward(Assembly as Assembly){

var machine = Assembly;

machine.setItemSlot(2, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("key");

machine.setItemSlot(4, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output1");

machine.setItemSlot(5, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output2");

machine.setItemSlot(6, 1, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output3");

machine.setItemSlot(4, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output4");

machine.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output5");

machine.setItemSlot(6, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output6");

machine.setItemSlot(4, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output7");

machine.setItemSlot(5, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output8");

machine.setItemSlot(6, 3, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output9");

machine.setDurationSlot(3,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");

machine.setJEIItemSlot(4,1,"output1");
machine.setJEIItemSlot(5,1,"output2");
machine.setJEIItemSlot(6,1,"output3");
machine.setJEIItemSlot(4,2,"output4");
machine.setJEIItemSlot(5,2,"output5");
machine.setJEIItemSlot(6,2,"output6");
machine.setJEIItemSlot(4,3,"output7");
machine.setJEIItemSlot(5,3,"output8");
machine.setJEIItemSlot(6,3,"output9");
machine.setJEIItemSlot(2,2,"key");
machine.setJEIDurationSlot(3,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
}


function SteamRecipeAdder(Assembly as Assembly,Output as IItemStack,Input as IIngredient,Time as int){

var machine = Assembly;

var recipe = AssemblyRecipe.create(function(container){
 container.addFluidOutput("water",<liquid:water>*200);
 container.addItemOutput("output",Output); })
.requireFluid("steam",<liquid:steam>*200)
.requireItem("input",Input)
.requireDuration("duration",Time);

machine.addRecipe(recipe);
machine.addJEIRecipe(recipe);

}

function CTSEadder(Core as IIngredient,Material as IIngredient,OutPut as IItemStack,Time as int){

val CTS = <assembly:craftshelf>;

val recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input2",Material)
.requireItem("input1",Material)
.requireItem("input3",Material)
.requireItem("input4",Material)
.requireItem("input6",Material)
.requireItem("input7",Material)
.requireItem("input8",Material)
.requireItem("input9",Material)
.requireItem("input5",Core)
.requireDuration("duration",Time);
CTS.addRecipe(recipe);
CTS.addJEIRecipe(recipe);

}
