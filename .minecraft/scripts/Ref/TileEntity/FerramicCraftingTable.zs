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

val ferramic_gear = <prodigytech:ferramic_gear>;

val steam_furnace = <requious:steam_furnace>;

val FC = <assembly:pt_crafttable>;

Default.NineSlotsSet(FC);

Normal.SetRightArrowSlot(FC,4,2);

Normal.SetItemSlot(FC,5,2,downF,"output");

var recipe27 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<requious:etched_machine>);})
.requireItem("input2",ferramic_iron)
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input8",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input5",<requious:steam_compressor_machine>);

FC.addRecipe(recipe27);
FC.addJEIRecipe(recipe27);

var recipe1 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:magmatic_aeroheater>);})
.requireItem("input1",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input4",iron_ingot)
.requireItem("input5",iron_ingot)
.requireItem("input6",iron_ingot)
.requireItem("input7",iron_ingot)
.requireItem("input8",iron_ingot)
.requireItem("input9",iron_ingot);

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

var recipe8 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:incinerator>);})
.requireItem("input1",ferramic_iron)
.requireItem("input5",<minecraft:lava_bucket>)
.requireItem("input2",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",ferramic_iron);

FC.addRecipe(recipe8);
FC.addJEIRecipe(recipe8);

var recipe9 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:blower_furnace>);})
.requireItem("input1",ferramic_iron)
.requireItem("input2",iron_ingot)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",iron_ingot);

FC.addRecipe(recipe9);
FC.addJEIRecipe(recipe9);

var recipe10 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:heat_sawmill>);})
.requireItem("input1",ferramic_iron)
.requireItem("input2",ferramic_gear)
.requireItem("input5",<contenttweaker:steel_blade>)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",ferramic_iron);

FC.addRecipe(recipe10);
FC.addJEIRecipe(recipe10);

var recipe11 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:rotary_grinder>);})
.requireItem("input1",ferramic_iron)
.requireItem("input2",ferramic_gear)
.requireItem("input5",<contenttweaker:steel_drill>)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",ferramic_iron);

FC.addRecipe(recipe11);
FC.addJEIRecipe(recipe11);

var recipe12 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:food_purifier>);})
.requireItem("input1",ferramic_iron)
.requireItem("input5",ferramic_gear)
.requireItem("input7",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",<prodigytech:carbon_plate>);

FC.addRecipe(recipe12);
FC.addJEIRecipe(recipe12);

var recipe13 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:ore_refinery>);})
.requireItem("input6",ferramic_iron)
.requireItem("input5",<prodigytech:circuit_refined>)
.requireItem("input4",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input1",<minecraft:gold_ingot>)
.requireItem("input7",<minecraft:gold_ingot>)
.requireItem("input3",ferramic_iron)
.requireItem("input2",<minecraft:redstone>)
.requireItem("input8",<minecraft:redstone>);

FC.addRecipe(recipe13);
FC.addJEIRecipe(recipe13);

var recipe14 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:magnetic_reassembler>);})
.requireItem("input7",ferramic_iron)
.requireItem("input5",<prodigytech:circuit_refined>)
.requireItem("input1",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input4",<minecraft:gold_ingot>)
.requireItem("input6",<minecraft:gold_ingot>)
.requireItem("input3",ferramic_iron)
.requireItem("input2",<minecraft:redstone>)
.requireItem("input8",<minecraft:redstone>);

FC.addRecipe(recipe14);
FC.addJEIRecipe(recipe14);

var recipe15 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:magnetic_reassembler>);})
.requireItem("input7",ferramic_iron)
.requireItem("input5",<prodigytech:circuit_refined>)
.requireItem("input1",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input4",<minecraft:gold_ingot>)
.requireItem("input6",<minecraft:gold_ingot>)
.requireItem("input3",ferramic_iron)
.requireItem("input2",<minecraft:redstone>)
.requireItem("input8",<minecraft:redstone>);

FC.addRecipe(recipe15);
FC.addJEIRecipe(recipe15);

var recipe16 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:automatic_crystal_cutter>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_gear)
.requireItem("input5",<prodigytech:circuit_crude>);

FC.addRecipe(recipe16);
FC.addJEIRecipe(recipe16);

var recipe17 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:air_funnel>*4);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron);

FC.addRecipe(recipe17);
FC.addJEIRecipe(recipe17);

var recipe18 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:capacitor_charger>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input5",<minecraft:iron_block>)
.requireItem("input8",<requious:steam_furnace>);

FC.addRecipe(recipe18);
FC.addJEIRecipe(recipe18);

var recipe19 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:fuel_processor>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input2",<ore:dustRedstone>)
.requireItem("input5",<prodigytech:circuit_crude>)
.requireItem("input8",<minecraft:gold_ingot>);

FC.addRecipe(recipe19);
FC.addJEIRecipe(recipe19);

var recipe20 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:food_enricher>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",<minecraft:gold_ingot>)
.requireItem("input7",ferramic_gear)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input2",<ore:dustRedstone>)
.requireItem("input5",<prodigytech:circuit_crude>)
.requireItem("input8",<prodigytech:carbon_plate>);

FC.addRecipe(recipe20);
FC.addJEIRecipe(recipe20);

var recipe21 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:primordialis_reactor>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",<prodigytech:carbon_plate>)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",<prodigytech:carbon_plate>)
.requireItem("input2",<prodigytech:carbon_plate>)
.requireItem("input5",<prodigytech:circuit_perfected>)
.requireItem("input8",<prodigytech:carbon_plate>);

FC.addRecipe(recipe21);
FC.addJEIRecipe(recipe21);

var recipe22 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:atomic_reshaper>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",<prodigytech:carbon_plate>)
.requireItem("input7",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input9",ferramic_iron)
.requireItem("input6",<prodigytech:carbon_plate>)
.requireItem("input2",<ore:glowstone>)
.requireItem("input5",<prodigytech:circuit_perfected>)
.requireItem("input8",<ore:blockRedstone>);

FC.addRecipe(recipe22);
FC.addJEIRecipe(recipe22);

var recipe23 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:linear_extractor>);})
.requireItem("input1",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input5",ferramic_iron)
.requireItem("input3",ferramic_iron)
.requireItem("input8",ferramic_iron)
.requireItem("input6",ferramic_iron);

FC.addRecipe(recipe23);
FC.addJEIRecipe(recipe23);

var recipe24 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:wormhole_funnel>*2);})
.requireItem("input7",ferramic_iron)
.requireItem("input4",ferramic_iron)
.requireItem("input5",<ore:enderpearl>)
.requireItem("input9",ferramic_iron)
.requireItem("input8",<prodigytech:circuit_crude>)
.requireItem("input6",ferramic_iron);

FC.addRecipe(recipe24);
FC.addJEIRecipe(recipe24);

var recipe25 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:funnelling_extractor>);})
.requireItem("input5",<prodigytech:linear_extractor>)
.requireItem("input2",ferramic_gear);

FC.addRecipe(recipe25);
FC.addJEIRecipe(recipe25);

var recipe26 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:dispersing_extractor>);})
.requireItem("input2",<prodigytech:linear_extractor>)
.requireItem("input5",ferramic_gear);

FC.addRecipe(recipe26);
FC.addJEIRecipe(recipe26);

var recipe29 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:crystal_cutter>);})
.requireItem("input2",ferramic_gear)
.requireItem("input5",ferramic_iron)
.requireItem("input8",<ore:stickWood>);

FC.addRecipe(recipe29);
FC.addJEIRecipe(recipe29);

var recipe30 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:wormhole_linker>);})
.requireItem("input2",<ore:enderpearl>)
.requireItem("input5",<prodigytech:circuit_crude>)
.requireItem("input8",ferramic_iron);

FC.addRecipe(recipe30);
FC.addJEIRecipe(recipe30);

var recipe28 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:ferramic_handbow>);})
.requireItem("input4",ferramic_iron)
.requireItem("input5",ferramic_iron)
.requireItem("input6",ferramic_iron)
.requireItem("input9",<prodigytech:carbon_plate>);

FC.addRecipe(recipe28);
FC.addJEIRecipe(recipe28);

var recipe31 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:zorrasteel_handbow>);})
.requireItem("input4",<prodigytech:zorrasteel_ingot>)
.requireItem("input5",<prodigytech:zorrasteel_ingot>)
.requireItem("input6",<prodigytech:zorrasteel_ingot>)
.requireItem("input9",<prodigytech:carbon_plate>);

FC.addRecipe(recipe31);
FC.addJEIRecipe(recipe31);

var recipe32 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:heat_capacitor_0:12000>);})
.requireItem("input4",<prodigytech:ferramic_ingot>)
.requireItem("input2",<prodigytech:ferramic_ingot>)
.requireItem("input6",<prodigytech:ferramic_ingot>)
.requireItem("input5",<ore:dustRedstone>)
.requireItem("input9",<ore:nuggetIron>)
.requireItem("input7",<ore:nuggetIron>);

FC.addRecipe(recipe32);
FC.addJEIRecipe(recipe32);

var recipe33 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:heat_capacitor_1:12000>);})
.requireItem("input8",<prodigytech:heat_capacitor_0:12000>)
.requireItem("input2",<prodigytech:heat_capacitor_0:12000>)
.requireItem("input6",<prodigytech:carbon_plate>)
.requireItem("input4",<prodigytech:carbon_plate>)
.requireItem("input5",<ore:ingotGold>);

FC.addRecipe(recipe33);
FC.addJEIRecipe(recipe33);

var recipe34 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:heat_capacitor_2:12000>);})
.requireItem("input8",<prodigytech:heat_capacitor_1:12000>)
.requireItem("input2",<prodigytech:heat_capacitor_1:12000>)
.requireItem("input6",<ore:ingotGold>)
.requireItem("input4",<ore:ingotGold>)
.requireItem("input5",<ore:gemDiamond>);

FC.addRecipe(recipe34);
FC.addJEIRecipe(recipe34);

var recipe35 =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",<prodigytech:heat_capacitor_3:12000>);})
.requireItem("input8",<prodigytech:heat_capacitor_2:12000>)
.requireItem("input2",<prodigytech:heat_capacitor_2:12000>)
.requireItem("input6",<prodigytech:zorrasteel_ingot>)
.requireItem("input4",<prodigytech:zorrasteel_ingot>)
.requireItem("input5",<prodigytech:circuit_perfected>);

FC.addRecipe(recipe35);
FC.addJEIRecipe(recipe35);