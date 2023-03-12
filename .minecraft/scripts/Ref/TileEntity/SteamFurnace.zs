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

Default.NormalMachine(stf);

Normal.SetItemSlot(stf,0,4,backF,"fuel");

Normal.SetFireSlot(stf,0,3);

val steam_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "steam", Amount: 1000}});

val water_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "water", Amount: 1000}});

var recipe =AssemblyRecipe.create(function(container){
 container.addItemOutput("output",steam_cell);})
.requireItem("input",water_cell)
.requireItem("fuel",<contenttweaker:charcoke>)
.requireDuration("fire",500)
.requireDuration("duration",500);

stf.addRecipe(recipe);
stf.addJEIRecipe(recipe);