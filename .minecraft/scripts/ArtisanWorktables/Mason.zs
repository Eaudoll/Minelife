import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mason")
  .setShaped([
    [<contenttweaker:stone_shard>, <contenttweaker:stone_shard>, <contenttweaker:stone_shard>],
    [<contenttweaker:stone_shard>, <minecraft:flint>, <contenttweaker:stone_shard>],
    [<contenttweaker:stone_shard>, <contenttweaker:stone_shard>, <contenttweaker:stone_shard>]])
  .addOutput(<contenttweaker:better_stone>)
  .addTool(<ore:artisansTrowel>, 5)
  .create();


RecipeBuilder.get("mason")
  .setShaped([
    [<contenttweaker:black_brick>, <minecraft:clay_ball>, <contenttweaker:black_brick>],
    [<minecraft:clay_ball>, <contenttweaker:black_brick>, <minecraft:clay_ball>],
    [<contenttweaker:black_brick>, <minecraft:clay_ball>, <contenttweaker:black_brick>]])
  .addOutput(<contenttweaker:black_brick_block>)
  .addTool(<ore:artisansTrowel>, 5)
  .create();

RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:better_stone>])
  .addOutput(<contenttweaker:better_stone_plate> * 4)
    .addTool(<variedcommodities:hammer>,10)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<contenttweaker:furnace_brick>, <contenttweaker:furnace_brick>, <contenttweaker:furnace_brick>],
    [<contenttweaker:furnace_brick>, null, <contenttweaker:furnace_brick>],
    [<contenttweaker:furnace_brick>, <contenttweaker:furnace_brick>, <contenttweaker:furnace_brick>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<requious:basic_furnace>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<biomesoplenty:ash_block>, <contenttweaker:furnace_brick>, <biomesoplenty:ash_block>],
    [<contenttweaker:furnace_brick>, <requious:basic_furnace>, <contenttweaker:furnace_brick>],
    [<biomesoplenty:ash_block>, <contenttweaker:furnace_brick>, <biomesoplenty:ash_block>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<requious:mix_furnace>)
  .create();
  
 RecipeBuilder.get("mason")
  .setShaped([
    [<contenttweaker:better_stone_plate>, <contenttweaker:better_stone_plate>, <contenttweaker:better_stone_plate>],
    [<contenttweaker:better_stone_plate>, null, <contenttweaker:better_stone_plate>],
    [<contenttweaker:better_stone_plate>, <contenttweaker:better_stone_plate>, <contenttweaker:better_stone_plate>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<requious:brick_kiln>)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, <prodigytech:ash_bricks>],
    [<prodigytech:ash_bricks>, <requious:steam_smelting_furnace>, <prodigytech:ash_bricks>],
    [<prodigytech:ash_bricks>, <prodigytech:ash_bricks>, <prodigytech:ash_bricks>]])
  .addOutput(<prodigytech:explosion_furnace>)
  .addTool(<ore:artisansTrowel>,10)
  .create();