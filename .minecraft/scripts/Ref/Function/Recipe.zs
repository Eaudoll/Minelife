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

global basf as Assembly = <assembly:basic_furnace>;
global brk as Assembly = <assembly:brick_kiln>;
global stf as Assembly = <assembly:steam_furnace>;


function BasicFurnaceRecipeAdder(OutPut as IItemStack,Input as IIngredient,Fuel as IIngredient,FireTime as int,Duration as int){

var recipe = AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input",Input)
.requireItem("fuel",Fuel)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

basf.addRecipe(recipe);
basf.addJEIRecipe(recipe);

}

function BrickkilnRecipeAdder(OuShuNeed as IIngredient,JiShuNeed as IIngredient,OutPut as IItemStack){

val recipe = AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input2",OuShuNeed)
.requireItem("input4",OuShuNeed)
.requireItem("input6",OuShuNeed)
.requireItem("input8",OuShuNeed)
.requireItem("input1",JiShuNeed)
.requireItem("input3",JiShuNeed)
.requireItem("input5",JiShuNeed)
.requireItem("input7",JiShuNeed)
.requireItem("input9",JiShuNeed)
.requireItem("fuel",<minecraft:coal>)
.requireDuration("fire",1000)
.requireDuration("duration",1000);

brk.addRecipe(recipe);
brk.addJEIRecipe(recipe);

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

function SteamRecipeAdder(Machine as Assembly,Output as IItemStack,Input as IIngredient,Time as int){

val steam_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "steam", Amount: 1000}});

val water_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}});

var recipe2 = AssemblyRecipe.create(function(container){
 container.addItemOutput("output",Output);
 container.addItemOutput("water",water_cell);})
.requireItem("input",Input)
.requireItem("steam",steam_cell)
.requireDuration("duration",Time);

Machine.addRecipe(recipe2);
Machine.addJEIRecipe(recipe2);

}

function MudFurnaceAdder(OutPut as IItemStack,Main as IIngredient,Material as IIngredient,FireTime as int,Duration as int)
{

var mud = <assembly:mud_furnace>;

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input",Main)
.requireItem("fuel",Material)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

mud.addRecipe(recipe);
mud.addJEIRecipe(recipe);

}

function MixFurnaceAdder(OutPut as IItemStack,Main as IIngredient,Material as IIngredient,Fuel as IIngredient,FireTime as int,Duration as int)
{

var mix = <assembly:mix_furnace>;

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",OutPut);})
.requireItem("input1",Main)
.requireItem("fuel",Fuel)
.requireItem("input2",Material)
.requireDuration("fire",FireTime)
.requireDuration("duration",Duration);

mix.addRecipe(recipe);
mix.addJEIRecipe(recipe);

}
