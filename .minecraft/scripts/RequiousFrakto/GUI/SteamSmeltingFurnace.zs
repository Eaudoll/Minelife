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

var machine = <assembly:steam_fire_furnace>;

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

Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot>,<contenttweaker:aluminum_ore>,1000);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:9>,<contenttweaker:nickel_ore>,1000);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:12> ,<ore:ingotIron>,2000);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:gold_ingot> ,<minecraft:gold_ore>,1500);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<techreborn:ingot:11> ,<techreborn:ore:13>,1500);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:iron_ingot>*2,<ore:highIron>,1000);
Function.SteamRecipeAdder(<assembly:steam_fire_furnace>,<minecraft:iron_ingot>,<ore:lowIron>,1000);