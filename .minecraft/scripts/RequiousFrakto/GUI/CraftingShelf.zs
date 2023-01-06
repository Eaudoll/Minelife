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

function CraftingShelfFullRecipeAdder(OutPut as IItemStack,Duration as int,
one as IIngredient,two as IIngredient,three as IIngredient,
four as IIngredient,five as IIngredient,six as IIngredient,
seven as IIngredient,eight as IIngredient,nine as IIngredient
)
{

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input1",one)
.requireItem("input2",two)
.requireItem("input3",three)
.requireItem("input4",four)
.requireItem("input5",five)
.requireItem("input6",six)
.requireItem("input7",seven)
.requireItem("input8",eight)
.requireItem("input9",nine)
.requireDuration("duration",Duration);

CTS.addRecipe(recipe);
CTS.addJEIRecipe(recipe);

}

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

//about Artisan Worktables
CraftingShelfFullRecipeAdder(<artisanworktables:worktable:14>,3000,<minecraft:hardened_clay>,<minecraft:hardened_clay>,<minecraft:hardened_clay>,<minecraft:hardened_clay>,<artisanworktables:worktable:5>,<minecraft:hardened_clay>,<minecraft:hardened_clay>,<minecraft:hardened_clay>,<minecraft:hardened_clay>);
CraftingShelfFullRecipeAdder(<artisanworktables:worktable>,3000,<ore:wool>,<ore:wool>,<ore:wool>,<ore:wool>,<artisanworktables:worktable:5>,<ore:wool>,<ore:wool>,<ore:wool>,<ore:wool>);
CraftingShelfFullRecipeAdder(<artisanworktables:worktable:10>,3000,<ore:dirt>,<ore:dirt>,<ore:dirt>,<ore:dirt>,<artisanworktables:worktable:5>,<ore:dirt>,<ore:dirt>,<ore:dirt>,<ore:dirt>);

var basic =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<artisanworktables:worktable:5>);})
.requireItem("input2",<ore:plateWood>)
.requireItem("input1",<ore:plateWood>)
.requireItem("input3",<ore:plateWood>)
.requireItem("input4",<ore:plateWood>)
.requireItem("input6",<ore:plateWood>)
.requireItem("input7",<ore:plateWood>)
.requireItem("input8",<ore:plateWood>)
.requireItem("input9",<ore:plateWood>)
.requireDuration("duration",2000);

CTS.addRecipe(basic);
CTS.addJEIRecipe(basic);

var leather =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<artisanworktables:worktable:13>);})
.requireItem("input2",<minecraft:leather>)
.requireItem("input1",<minecraft:leather>)
.requireItem("input3",<minecraft:leather>)
.requireItem("input4",<minecraft:leather>)
.requireItem("input6",<minecraft:leather>)
.requireItem("input7",<minecraft:leather>)
.requireItem("input8",<minecraft:leather>)
.requireItem("input9",<minecraft:leather>)
.requireItem("input5",<artisanworktables:worktable:5>)
.requireDuration("duration",2000);
CTS.addRecipe(leather);
CTS.addJEIRecipe(leather);

var iron =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<artisanworktables:worktable:3>);})
.requireItem("input2",<ore:plateIron>)
.requireItem("input1",<ore:plateIron>)
.requireItem("input3",<ore:plateIron>)
.requireItem("input4",<ore:plateIron>)
.requireItem("input6",<ore:plateIron>)
.requireItem("input7",<ore:plateIron>)
.requireItem("input8",<ore:plateIron>)
.requireItem("input9",<ore:plateIron>)
.requireItem("input5",<artisanworktables:worktable:5>)
.requireDuration("duration",2000);
CTS.addRecipe(iron);
CTS.addJEIRecipe(iron);