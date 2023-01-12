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

static CTS as Assembly = <assembly:craftshelf>;
Function.NineSlotsSet(<assembly:craftshelf>);

CTS.setItemSlot(5,2, ComponentFace.front(), 64)
         .setHandAccess(true, true)
         .setAccess(true, false)
         .setGroup("output");

CTS.setDurationSlot(4,2)
        .setVisual(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 8, 1, 8, GaugeDirection.right(), false, 1, 1))
        .setGroup("duration");

CTS.setJEIItemSlot(5,2,"output");
CTS.setJEIDurationSlot(4,2, "duration", SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",0, 8, 1, 8, GaugeDirection.right(), false, 1, 1));

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<minelife:primary_pickaxe>);})
.requireItem("input1",<ore:cobblestone>)
.requireItem("input2",<ore:cobblestone>)
.requireItem("input3",<ore:cobblestone>)
.requireItem("input5",<contenttweaker:branch>)
.requireItem("input8",<contenttweaker:branch>)
.requireDuration("duration",1000);

CTS.addRecipe(recipe1);
CTS.addJEIRecipe(recipe1);

var recipe2 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<minelife:primary_axe>);})
.requireItem("input1",<contenttweaker:flint_shard>)
.requireItem("input2",<contenttweaker:flint_shard>)
.requireItem("input4",<contenttweaker:flint_shard>)
.requireItem("input5",<contenttweaker:branch>)
.requireItem("input8",<contenttweaker:branch>)
.requireDuration("duration",1000);

CTS.addRecipe(recipe2);
CTS.addJEIRecipe(recipe2);

var recipe3 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<minelife:primary_shovel>);})
.requireItem("input2",<ore:stoneShard>)
.requireItem("input5",<contenttweaker:branch>)
.requireItem("input8",<contenttweaker:branch>)
.requireDuration("duration",1000);

CTS.addRecipe(recipe3);
CTS.addJEIRecipe(recipe3);

CraftingShelfFullRecipeAdder(<minecraft:cobblestone>,1000,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>,<contenttweaker:gravel>);


var recipe4 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<variedcommodities:hammer>);})
.requireItem("input2",<ore:stoneShard>)
.requireItem("input1",<ore:stoneShard>)
.requireItem("input4",<ore:stoneShard>)
.requireItem("input6",<ore:stoneShard>)
.requireItem("input5",<contenttweaker:branch>)
.requireItem("input7",<contenttweaker:branch>)
.requireDuration("duration",1000);

CTS.addRecipe(recipe4);
CTS.addJEIRecipe(recipe4);


// Add Recipe For ArtisanWorktables
var materials as IIngredient[] = [<ore:crystal>,<ore:plateIron>,<ore:wool>,<minecraft:hardened_clay>,<biomesoplenty:dirt>,<minecraft:leather>];

for i ,material in materials{

var Output as IItemStack[] = [<artisanworktables:worktable:7>,<artisanworktables:worktable:3>,<artisanworktables:worktable>,<artisanworktables:worktable:14>,<artisanworktables:worktable:10>,<artisanworktables:worktable:13>];

Function.CTSEadder(<artisanworktables:worktable:5>,material,Output[i],2000);

}

Function.CTSEadder(<contenttweaker:gravel>,<contenttweaker:gravel>,<minecraft:cobblestone>,1000);
