import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:leather>, null, <minecraft:leather>]])
  .addOutput(<minecraft:leather_helmet>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:leather>, null, <minecraft:leather>],
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]])
  .addOutput(<minecraft:leather_chestplate>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<minecraft:leather>, null, <minecraft:leather>],
    [<minecraft:leather>, null, <minecraft:leather>]])
  .addOutput(<minecraft:leather_leggings>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:leather>, null, <minecraft:leather>],
    [<minecraft:leather>, null, <minecraft:leather>]])
  .addOutput(<minecraft:leather_boots>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
    [<contenttweaker:cotton_fabric>, <contenttweaker:cotton_fabric>, <contenttweaker:cotton_fabric>],
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]])
  .addOutput(<contenttweaker:reinforced_cloth>*3)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>]])
  .addOutput(<minecraft:chainmail_chestplate>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>]])
  .addOutput(<minecraft:chainmail_leggings>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>]])
  .addOutput(<minecraft:chainmail_helmet>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("tailor")
  .setShaped([
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>],
    [<contenttweaker:reinforced_cloth>, null, <contenttweaker:reinforced_cloth>]])
  .addOutput(<minecraft:chainmail_boots>)
  .addTool(<ore:artisansNeedle>,20)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>],
    [<techreborn:plates>, <minecraft:chainmail_chestplate>, <techreborn:plates>],
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>]])
  .addTool(<minelife:wrought_iron_hammer>, 20)
  .addOutput(<minelife:knight_armorbody>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>],
    [<techreborn:plates>, <minecraft:chainmail_leggings>, <techreborn:plates>],
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>]])
  .addTool(<minelife:wrought_iron_hammer>,20)
  .addOutput(<minelife:knight_armorlegs>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>],
    [<techreborn:plates>, <minecraft:chainmail_helmet>, <techreborn:plates>],
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>]])
  .addTool(<minelife:wrought_iron_hammer>,20)
  .addOutput(<minelife:knight_armorhelmet>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>],
    [<techreborn:plates>, <minecraft:chainmail_boots>, <techreborn:plates>],
    [<techreborn:plates>, <techreborn:plates>, <techreborn:plates>]])
  .addTool(<minelife:wrought_iron_hammer>,20)
  .addOutput(<minelife:knight_armorboots>)
  .create();