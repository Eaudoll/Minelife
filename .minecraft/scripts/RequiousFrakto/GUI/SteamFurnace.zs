import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;

var SF = <assembly:steam_furnace>;

SF.setItemSlot(0, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("fuel");

SF.setFluidSlot(3, 2, ComponentFace.back(), 4000)
        .allowBucket(true, true)
       .setAccess(true, false)
       .setGroup("water");

SF.setFluidSlot(5, 2, ComponentFace.back(), 4000)
       .allowBucket(true, true)
       .setAccess(false, true)
       .setGroup("steam");

SF.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");

SF.setDurationSlot(0,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");

SF.setJEIFluidSlot(3,2,"water");
SF.setJEIFluidSlot(5,2,"steam");
SF.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
SF.setJEIDurationSlot(0,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));
SF.setJEIItemSlot(0,4,"fuel");

var recipe = AssemblyRecipe.create(function(container){
 container.addFluidOutput("steam",<liquid:steam>*100);})
.requireFluid("water",<liquid:water>*100)
.requireItem("fuel",<contenttweaker:charcoke>)
.requireDuration("fire",1000)
.requireDuration("duration",500);

SF.addRecipe(recipe);
SF.addJEIRecipe(recipe);