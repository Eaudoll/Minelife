import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>],
    [<travelersbackpack:backpack_tank>, <requious:basic_furnace>,<travelersbackpack:backpack_tank>],
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
    [<buildcraftcore:gear_iron>,<ironchest:iron_chest:3>,<buildcraftcore:gear_iron>],
    [<travelersbackpack:backpack_tank>,<contenttweaker:steam_machine_casing>,<travelersbackpack:backpack_tank>]])
  .addTool(print,0)
  .addOutput(outputs[i])
  .create();
}
