import crafttweaker.item.IItemStack;

var items as IItemStack[] = [<minecraft:leather_helmet>,<minecraft:leather_chestplate>,<minecraft:leather_leggings>,<minecraft:leather_boots>];

for item in items{
    recipes.remove(item);
}
