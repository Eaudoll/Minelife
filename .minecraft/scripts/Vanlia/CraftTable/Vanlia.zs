import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var items as IIngredient[] = [<minecraft:leather_helmet>,
<minecraft:leather_chestplate>,
<minecraft:leather_leggings>,
<minecraft:leather_boots>,
<minecraft:chest>,
<ore:craftingTableWood>,
<ore:logWood>,
<buildcraftcore:gear_iron>,
<buildcraftcore:gear_gold>,
<buildcraftcore:gear_diamond>];

for item in items{
    recipes.remove(item);
}

 recipes.addShaped(<minecraft:stone>,
 [[<ore:stoneShard>,<ore:stoneShard>,null],
 [<ore:stoneShard>,<ore:stoneShard>,null],
 [null, null,null]]);

recipes.addShapeless(<techreborn:plates:3>*4,[<ore:logWood>]);

 recipes.addShapeless(<artisanworktables:worktable:5>,
 [<techreborn:plates:3>,<techreborn:plates:3>,<techreborn:plates:3>,<techreborn:plates:3>]);
