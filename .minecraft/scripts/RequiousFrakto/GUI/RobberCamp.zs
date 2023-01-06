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

static AWR as Assembly = <assembly:award_1>;
Function.AddAward(AWR);

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output1",<minelife:iron_prop>);
 container.addItemOutput("output2",<minecraft:gunpowder>);
 container.addItemOutput("output3",<toolbelt:pouch>);
 container.addItemOutput("output4",<contenttweaker:robber_boss_badge>);
 container.addItemOutput("output5",<variedcommodities:coin_gold>*64);
 container.addItemOutput("output7",<biomesoplenty:gem_block:3>);})
 .requireItem("key",<contenttweaker:yellow_key>);
AWR.addRecipe(recipe);
AWR.addJEIRecipe(recipe);
