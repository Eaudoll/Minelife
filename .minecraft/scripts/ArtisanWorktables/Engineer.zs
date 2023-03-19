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
    [null,coms[i],null],
    [<buildcraftcore:gear_iron>,<ironchest:iron_chest:3>,<buildcraftcore:gear_iron>],
    [<travelersbackpack:backpack_tank>,<contenttweaker:steam_machine_casing>,<travelersbackpack:backpack_tank>]])
  .addTool(print,0)
  .addOutput(outputs[i])
  .create();
}

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:middel_barrel>],
    [<buildcraftcore:gear_iron>],
    [<contenttweaker:gun_stick>]])
  .addTool(<contenttweaker:middel_gun>, 1)
  .addOutput(<archaicguns:pipegun>.withTag({AmmoCount: 0}))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:short_barrel>],
    [<buildcraftcore:gear_iron>],
    [<contenttweaker:gun_stick>]])
  .addTool(<contenttweaker:short_gun>, 1)
  .addOutput(<archaicguns:blunderbuss>.withTag({AmmoCount: 0}))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:long_barrel>],
    [<buildcraftcore:gear_iron>],
    [<contenttweaker:gun_stick>]])
  .addTool(<contenttweaker:long_gun>, 1)
  .addOutput(<archaicguns:musket>.withTag({AmmoCount: 0}))
  .create();