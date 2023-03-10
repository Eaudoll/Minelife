#priority 100
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;


<ore:stoneShard>.add(<contenttweaker:stone_shard>);
<ore:stoneShard>.add(<contenttweaker:diorite_stone_shard>);
<ore:stoneShard>.add(<contenttweaker:andesite_stone_shard>);
<ore:stoneShard>.add(<contenttweaker:granite_stone_shard>);
<ore:normalFuel>.add(<minecraft:coal>);
<ore:normalFuel>.add(<minecraft:coal:1>);
<ore:ironOre>.add(<contenttweaker:hematite>);
<ore:ironOre>.add(<contenttweaker:magnetite>);
<ore:ironOre>.add(<contenttweaker:siderite>);
<ore:ironOre>.add(<contenttweaker:pyrite>);
<ore:highIron>.add(<contenttweaker:hematite>);
<ore:highIron>.add(<contenttweaker:magnetite>);
<ore:lowIron>.add(<contenttweaker:siderite>);
<ore:lowIron>.add(<contenttweaker:pyrite>);


var items as IItemStack[] = [<minecraft:spider_eye>,<minecraft:poisonous_potato>,<minecraft:rotten_flesh>,<minecraft:fish:3>];
for item in items{<ore:poisonousFood>.add(item);}

val crystals as IItemStack[] = [<quark:crystal>,<quark:crystal:1>,<quark:crystal:2>,<quark:crystal:3>,<quark:crystal:4>,<quark:crystal:5>,<quark:crystal:6>,<quark:crystal:7>,<quark:crystal:8>];
for crystal in crystals{<ore:crystal>.add(crystal);}

