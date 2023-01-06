import mods.dropt.Dropt;
import mods.dropt.Harvester;

//bioleaves change
Dropt.list("bioleaves1_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:leaves_1:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:branch>],Dropt.range(1,2))));

Dropt.list("bioleaves0_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:leaves_0:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:branch>],Dropt.range(1,2))));

Dropt.list("bioleaves2_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:leaves_2:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:branch>],Dropt.range(1,2))));

Dropt.list("biograss_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:grass:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:gravel>],Dropt.range(1,2))));

Dropt.list("bioleaves3_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:leaves_3:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:branch>],Dropt.range(1,2))));

Dropt.list("bioleaves4_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:leaves_4:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:branch>],Dropt.range(1,2))));
//biolog change


Dropt.list("biowood_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:log_0:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));

Dropt.list("biowood1_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:log_1:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));

Dropt.list("biowood2_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:log_2:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));

Dropt.list("biowood3_list")
    .add(Dropt.rule()
        .matchBlocks(["biomesoplenty:log_3:*"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));
