#priority 101
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;
import mods.requious.Assembly;

global upF as ComponentFace = ComponentFace.up();
global downF as ComponentFace = ComponentFace.down();
global frontF as ComponentFace = ComponentFace.north();
global backF as ComponentFace = ComponentFace.south();
global westF as ComponentFace = ComponentFace.west();
global eastF as ComponentFace = ComponentFace.east();
global allF as ComponentFace = ComponentFace.all();

function SetItemSlot(Machine as Assembly,x as int,y as int,Face as ComponentFace,Group as string){
    Machine.setItemSlot(x, y,Face, 64)
       .setAccess(true, false)
       .setGroup(Group);

    Machine.setJEIItemSlot(x,y,Group);
}

function SetRightArrowSlot(Machine as Assembly,x as int,y as int){
    Machine.setDurationSlot(x,y)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
    
    Machine.setJEIDurationSlot(x,y, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
}

function SetUpArrowSlot(Machine as Assembly,x as int,y as int){
    Machine.setDurationSlot(x,y)
    .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 6, 8, 7, 8, GaugeDirection.up(), false, 1, 1))
    .setGroup("duration");
    
    Machine.setJEIDurationSlot(x,y, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",6, 8, 7, 8, GaugeDirection.up(), false, 1, 1));
}

function SetFireSlot(Machine as Assembly,x as int,y as int){
    Machine.setDurationSlot(x,y)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");

    Machine.setJEIDurationSlot(x,y, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));
}