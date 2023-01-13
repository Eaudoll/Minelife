import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:cobblestone>, <contenttweaker:magical_gem>, <minecraft:cobblestone>],
    [null, <minecraft:cobblestone>, null],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .addOutput(<botania:altar>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:livingrock_plate>,<contenttweaker:livingrock_plate>,<contenttweaker:livingrock_plate>],
    [<contenttweaker:livingrock_plate>, <contenttweaker:magical_gem>, <contenttweaker:livingrock_plate>],
    [<contenttweaker:livingrock_plate>,<contenttweaker:livingrock_plate>,<contenttweaker:livingrock_plate>]])
  .addOutput(<botania:manatablet>)
  .create();
