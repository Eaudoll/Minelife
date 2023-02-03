import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, null, <contenttweaker:wrought_iron_plate>],
    [<contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>, null],
    [<minecraft:stick>, null, null]])
  .addTool(<minelife:wrought_iron_hammer>,10)
  .addOutput(<minelife:wrought_iron_cutlass>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>],
    [<contenttweaker:wrought_iron_plate>, <minecraft:stick>, <contenttweaker:wrought_iron_plate>],
    [null, <minecraft:stick>, null]])
  .addTool(<variedcommodities:hammer>,10)
  .addOutput(<minelife:wrought_iron_hammer>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:wrought_iron_plate>],
    [<contenttweaker:wrought_iron_plate>],
    [<minecraft:stick>]])
  .addTool(<minelife:wrought_iron_hammer>, 10)
  .addOutput(<minelife:wrought_iron_sword>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>],
    [null, <minecraft:stick>, null],
    [null, <minecraft:stick>, null]])
  .addTool(<minelife:wrought_iron_hammer>, 10)
  .addOutput(<minelife:wrought_iron_pickaxe>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:wrought_iron_plate>, <contenttweaker:wrought_iron_plate>],
    [<contenttweaker:wrought_iron_plate>, <minecraft:stick>],
    [null, <minecraft:stick>]])
  .addTool(<minelife:wrought_iron_hammer>, 10)
  .addOutput(<minelife:wrought_iron_axe>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:wrought_iron_plate>],
    [<minecraft:stick>],
    [<minecraft:stick>]])
  .addTool(<minelife:wrought_iron_hammer>, 10)
  .addOutput(<minelife:wrought_iron_shovel>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>],
    [<contenttweaker:steam_ingot>, null, <contenttweaker:steam_ingot>],
    [<contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>, <contenttweaker:steam_ingot>]])
  .addOutput(<contenttweaker:steam_machine_casing>)
  .addTool(<minelife:wrought_iron_hammer>, 10)
  .create();

function GearAdd(plate as IItemStack,nugget as IItemStack,gear as IItemStack){
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, nugget, null],
    [nugget,plate, nugget],
    [null, nugget, null]])
  .addTool(<minelife:wrought_iron_hammer>,10)
  .addOutput(gear)
  .create();
}

GearAdd(<techreborn:plates>,<techreborn:nuggets:23>,<buildcraftcore:gear_iron>);
GearAdd(<techreborn:plates:1>,<minecraft:gold_nugget>,<buildcraftcore:gear_gold>);
GearAdd(<techreborn:plates:5>,<techreborn:nuggets:24>,<buildcraftcore:gear_diamond>);