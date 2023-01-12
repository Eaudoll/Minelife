import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:cobblestone>, <contenttweaker:magical_gem>, <minecraft:cobblestone>],
    [null, <minecraft:cobblestone>, null],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]])
  .addOutput(<botania:altar>)
  .create();
