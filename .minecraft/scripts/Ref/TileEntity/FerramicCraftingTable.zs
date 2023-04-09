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
import scripts.Ref.Function.Normal;
import scripts.Ref.Function.Default;
import scripts.Ref.Function.Recipe;

val iron_ingot = <minecraft:iron_ingot>;

val ferramic_iron = <prodigytech:ferramic_ingot>;

val steam_furnace = <requious:steam_furnace>;

val FC = <assembly:pt_crafttable>;

Default.NineSlotsSet(FC);

Normal.SetRightArrowSlot(FC,4,2);

Normal.SetItemSlot(FC,5,2,downF,"output");

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:magmatic_aeroheater>);})
.requireItem("input1",iron_ingot)
.requireItem("input3",iron_ingot)
.requireItem("input4",ferramic_iron)
.requireItem("input5",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input8",ferramic_iron)
.requireItem("input9",ferramic_iron);

FC.addRecipe(recipe1);
FC.addJEIRecipe(recipe1);

var recipe2 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:solid_fuel_aeroheater>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input2",ferramic_iron)
.requireItem("input5",steam_furnace)
.requireItem("input6",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input8",ferramic_iron)
.requireItem("input9",ferramic_iron);

FC.addRecipe(recipe2);
FC.addJEIRecipe(recipe2);

var recipe3 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:solderer>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input2",<minecraft:glowstone>)
.requireItem("input6",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input8",<prodigytech:carbon_plate>)
.requireItem("input9",ferramic_iron);

FC.addRecipe(recipe3);
FC.addJEIRecipe(recipe3);

var recipe4 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:energion_aeroheater>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",<ore:dustRedstone>)
.requireItem("input4",<ore:dustRedstone>)
.requireItem("input5",<prodigytech:circuit_crude>)
.requireItem("input8",steam_furnace);

FC.addRecipe(recipe4);
FC.addJEIRecipe(recipe4);

var recipe5 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:zorra_leaf>*2);})
.requireItem("input1",<grimoireofgaia:misc_pearl>)
.requireItem("input3",<grimoireofgaia:misc_pearl>)
.requireItem("input5",<grimoireofgaia:misc_pearl>)
.requireItem("input7",<grimoireofgaia:misc_pearl>)
.requireItem("input9",<grimoireofgaia:misc_pearl>)
.requireItem("input6",<prodigytech:energion_dust>)
.requireItem("input4",<prodigytech:energion_dust>)
.requireItem("input2",<prodigytech:energion_dust>)
.requireItem("input8",<prodigytech:energion_dust>);

FC.addRecipe(recipe5);
FC.addJEIRecipe(recipe5);

var recipe6 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:tartaric_aeroheater>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input5",steam_furnace)
.requireItem("input7",<prodigytech:zorrasteel_ingot>)
.requireItem("input9",<prodigytech:zorrasteel_ingot>)
.requireItem("input6",<prodigytech:zorrasteel_ingot>)
.requireItem("input4",<prodigytech:zorrasteel_ingot>)
.requireItem("input8",<betternether:cincinnasite_block>);

FC.addRecipe(recipe6);
FC.addJEIRecipe(recipe6);

var recipe7 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:capacitor_aeroheater>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input5",<prodigytech:circuit_refined>)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",<ore:dustRedstone>)
.requireItem("input4",<ore:dustRedstone>)
.requireItem("input8",ferramic_iron);

FC.addRecipe(recipe7);
FC.addJEIRecipe(recipe7);
