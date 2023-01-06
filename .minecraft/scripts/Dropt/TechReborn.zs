import mods.dropt.Dropt;
import mods.dropt.Harvester;

//techlog change

Dropt.list("techlog_list")
    .add(Dropt.rule()
        .matchBlocks(["techreborn:rubber_log"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));
