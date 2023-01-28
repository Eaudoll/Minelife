import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;

/** 
RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:steel_drill>],
    [<ironchest:iron_chest:3>],
    [<contenttweaker:steam_machine_casing>]])
  .addTool(<contenttweaker:steam_grinder>, 0)
  .addOutput(<requious:steam_grinder_machine>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:piston>],
    [<ironchest:iron_chest:3>],
    [<contenttweaker:steam_machine_casing>]])
  .addTool(<contenttweaker:steam_compressor>,0)
  .addOutput(<requious:steam_compressor_machine>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<requious:basic_furnace>],
    [<ironchest:iron_chest:3>],
    [<contenttweaker:steam_machine_casing>]])
  .addTool(<contenttweaker:steam_smelting_furnace>,0)
  .addOutput(<requious:steam_fire_furnace>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<artisanworktables:worktable>],
    [<ironchest:iron_chest:3>],
    [<contenttweaker:steam_machine_casing>]])
  .addTool(<contenttweaker:steam_spinning_machine>,0)
  .addOutput(<requious:steam_spinning_machine>)
  .create();
**/
RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>],
    [<contenttweaker:steam_ingot>, <requious:basic_furnace>, <contenttweaker:steam_ingot>],
    [<contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>]])
  .addTool(<contenttweaker:steam_furnace>,0)
  .addOutput(<requious:steam_furnace>)
  .create();


val prints as IItemStack[] = [<contenttweaker:steam_grinder>,<contenttweaker:steam_compressor>,<contenttweaker:steam_smelting_furnace>,<contenttweaker:steam_spinning_machine>];

for i,print in prints{
    val coms as IItemStack[] = [<contenttweaker:steel_drill>,<minecraft:piston>,<requious:basic_furnace>,<artisanworktables:worktable>];
    val outputs as IItemStack[] = [<requious:steam_grinder_machine>,<requious:steam_compressor_machine>,<requious:steam_fire_furnace>,<requious:steam_spinning_machine>];
    RecipeBuilder.get("engineer")
  .setShaped([
    [coms[i]],
    [<ironchest:iron_chest:3>],
    [<contenttweaker:steam_machine_casing>]])
  .addTool(print,0)
  .addOutput(outputs[i])
  .create();
}