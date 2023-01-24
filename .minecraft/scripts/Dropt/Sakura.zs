import mods.dropt.Dropt;
import mods.dropt.Harvester;

Dropt.list("sakuralog_list")
    .add(Dropt.rule()
        .matchBlocks(["sakura:sakura_log"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<techreborn:plates:3>],Dropt.range(4))
            ));