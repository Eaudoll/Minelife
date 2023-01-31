import mods.dropt.Dropt;
import mods.dropt.Harvester;
import mods.dropt.Rule;

//leaves change
Dropt.list("leaves_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:leaves:*"])
        .matchHarvester(Dropt.harvester()
        .type("PLAYER"))
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
        .items([<contenttweaker:branch>],Dropt.range(1,2)))
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(7), "EXCLUDED")
        .items([],Dropt.range(1,2))));

Dropt.list("leaves2_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:leaves2:*"])
        .matchHarvester(Dropt.harvester()
        .type("PLAYER"))
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(3), "EXCLUDED")
        .items([<contenttweaker:branch>],Dropt.range(1,2)))
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(7), "EXCLUDED")
        .items([],Dropt.range(1,2))));


//grass and dirt change
Dropt.list("dirt_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:dirt:*"])
        .matchHarvester(
        Dropt.harvester()
        .type("PLAYER")
        .mainHand("BLACKLIST",[],"shovel"))
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(3), "EXCLUDED")
        .items([<contenttweaker:gravel>],Dropt.range(1,2)))
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(7), "EXCLUDED")
        .items([],Dropt.range(1,2))));

Dropt.list("grass_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:grass"])
        .matchHarvester(
        Dropt.harvester()
        .type("PLAYER")
        .mainHand("BLACKLIST",[],"shovel"))
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(3), "EXCLUDED")
        .items([<contenttweaker:gravel>],Dropt.range(1,2)))
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(7), "EXCLUDED")
        .items([],Dropt.range(1,2))));

//stone change
Dropt.list("stone_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:stone"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(9), "EXCLUDED")
        .items("ALL",[<contenttweaker:stone_shard>,<contenttweaker:flint_shard>],Dropt.range(2,3)))
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
        .items([<contenttweaker:flint_shard>],Dropt.range(1))));

//log change
Dropt.list("wood_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:log:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
            .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));

Dropt.list("wood2_list")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:log2:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
            .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));
            
//make sand turn to Dsut Block

Dropt.list("sand_to_dust")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:sand"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .matchHarvester(
          Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST",[<minelife:wrought_iron_hammer>])
      )
        .addDrop(Dropt.drop()
            .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:dust_block>],Dropt.range(1))
            ));