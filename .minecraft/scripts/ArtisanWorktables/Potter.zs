import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("potter")
  .setShaped([
    [<prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>],
    [<prodigytech:ferramic_ingot>, <requious:grinder>, <prodigytech:ferramic_ingot>],
    [<prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>]])
  .addOutput(<requious:etched_machine>)
  .create();