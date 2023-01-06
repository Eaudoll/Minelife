import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;
import mods.requious.GaugeDirection;
import mods.requious.Assembly;

static bf as Assembly = <assembly:basic_furnace>;

bf.setItemSlot(3, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("input");
bf.setItemSlot(1, 4, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("fuel");       
bf.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");
bf.setDurationSlot(3,3)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 1, 1, 1, GaugeDirection.up(), false, 1, 1))
        .setGroup("fire");
bf.setItemSlot(5, 2, ComponentFace.back(), 64)
       .setAccess(true, false)
       .setGroup("output");

bf.setJEIItemSlot(3,2,"input");
bf.setJEIItemSlot(5,2,"output");
bf.setJEIItemSlot(1,4,"fuel");
bf.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));
bf.setJEIDurationSlot(3,3, "fire", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 1, 1, 1, GaugeDirection.up(), false, 1, 1));

function BasicFurnaceRecipeAdder(OutPut as IItemStack,Input as IIngredient,Fuel as IIngredient,FireTime as int,Duration as int){

var recipe = AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input",Input)
.requireItem("fuel",Fuel)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

bf.addRecipe(recipe);
bf.addJEIRecipe(recipe);
}

BasicFurnaceRecipeAdder(<contenttweaker:crude_iron>*2,<ore:highIron>,<ore:dustCoal>,1000,1000);
BasicFurnaceRecipeAdder(<contenttweaker:crude_iron>,<ore:lowIron>,<ore:dustCoal>,1000,1000);
BasicFurnaceRecipeAdder(<contenttweaker:melting_iron>,<contenttweaker:crude_iron>,<ore:dustCoal>,1000,500);
BasicFurnaceRecipeAdder(<contenttweaker:wrought_iron>,<minecraft:iron_ingot>,<ore:dustCoal>,1000,1500);
BasicFurnaceRecipeAdder(<techreborn:ingot:4>,<ore:oreCopper>,<ore:dustCoal>,1000,1000);
BasicFurnaceRecipeAdder(<contenttweaker:steam_ingot>,<techreborn:ingot:2>,<ore:dustCoal>,1000,1000);
