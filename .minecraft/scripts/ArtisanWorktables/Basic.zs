import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("basic")
  .setShapeless([<artisanworktables:worktable:5>, <ore:artisansCuttingBoard>])
  .addOutput(<artisanworktables:worktable:11>)
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<techreborn:plates:3>, <techreborn:plates:3>, <techreborn:plates:3>],
    [<techreborn:plates:3>, null, <techreborn:plates:3>],
    [<techreborn:plates:3>, <techreborn:plates:3>, <techreborn:plates:3>]])
  .addOutput(<minecraft:chest>)
  .create();