import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var br = <assembly:brick_kiln>;

br.setItemSlot(2,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input1");

br.setItemSlot(1,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input2");

br.setItemSlot(1,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input3");

br.setItemSlot(2,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input4");

br.setItemSlot(3,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input5");

br.setItemSlot(1,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input6");

br.setItemSlot(2,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input7");

br.setItemSlot(3,1, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input8");

br.setItemSlot(3,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("input9");

br.setItemSlot(5,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("output");

br.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");

br.setDurationSlot(2,4)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");

br.setItemSlot(8,3, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("need");


br.setJEIItemSlot(2,2,"input1");
br.setJEIItemSlot(1,2,"input2");
br.setJEIItemSlot(1,1,"input3");
br.setJEIItemSlot(2,1,"input4");
br.setJEIItemSlot(3,2,"input5");
br.setJEIItemSlot(1,3,"input6");
br.setJEIItemSlot(3,3,"input9");
br.setJEIItemSlot(2,3,"input7");
br.setJEIItemSlot(3,1,"input8");
br.setJEIItemSlot(5,2,"output");
br.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
br.setJEIDurationSlot(2,4, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));
br.setJEIItemSlot(8,4,"need");

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<minecraft:brick>*5);})
.requireItem("input1", <minecraft:clay>)
.requireItem("input2", <minecraft:clay>)
.requireItem("input3", <minecraft:clay>)
.requireItem("input4", <minecraft:clay>)
.requireItem("input5", <minecraft:clay>)
.requireItem("input6", <minecraft:clay>)
.requireItem("input7", <minecraft:clay>)
.requireItem("input8", <minecraft:clay>)
.requireItem("input9", <minecraft:clay>)
.requireItem("need", <minecraft:coal>)
.requireDuration("duration", 1000)
.requireDuration("fire", 1000);


var recipe2 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<contenttweaker:black_brick>*2);})
.requireItem("input1", <minecraft:clay>)
.requireItem("input2", <contenttweaker:graphite>)
.requireItem("input3", <minecraft:clay>)
.requireItem("input4", <contenttweaker:graphite>)
.requireItem("input5", <contenttweaker:graphite>)
.requireItem("input6", <minecraft:clay>)
.requireItem("input7", <contenttweaker:graphite>)
.requireItem("input8", <minecraft:clay>)
.requireItem("input9", <minecraft:clay>)
.requireItem("need", <minecraft:coal>*2)
.requireDuration("duration", 1000)
.requireDuration("fire", 1000);



br.addRecipe(recipe1);
br.addJEIRecipe(recipe1);
br.addRecipe(recipe2);
br.addJEIRecipe(recipe2);

