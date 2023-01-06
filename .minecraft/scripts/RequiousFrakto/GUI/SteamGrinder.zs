import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;
import mods.requious.Assembly;
import scripts.RequiousFrakto.Function;

var machine = <assembly:steam_grinder_machine>;

machine.setFluidSlot(0, 4, ComponentFace.back(), 4000)
       .allowBucket(true, true)
       .setAccess(false, true)
       .setGroup("steam");

machine.setFluidSlot(8, 4, ComponentFace.back(), 4000)
       .allowBucket(true, true)
       .setAccess(false, true)
       .setGroup("water");

machine.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input");

machine.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");       
    
machine.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");

machine.setJEIFluidSlot(0,4,"steam");
machine.setJEIFluidSlot(8,4,"water");
machine.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
machine.setJEIItemSlot(3,2,"input");
machine.setJEIItemSlot(5,2,"output");

Function.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:1>,<techreborn:ingot>,1000);
Function.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:34>,<techreborn:ingot:9>,1000);
Function.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:27> ,<ore:ingotIron>,1000);
Function.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:14>,<ore:ingotCopper>,500);
Function.SteamRecipeAdder(<assembly:steam_grinder_machine>,<techreborn:dust:53>,<ore:ingotTin>,500);
