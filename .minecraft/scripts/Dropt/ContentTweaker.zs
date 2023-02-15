import mods.dropt.Dropt;
import mods.dropt.Harvester;

Dropt.list("graphite_list")
    .add(Dropt.rule()
        .matchBlocks(["contenttweaker:graphite_ore"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:graphite>],Dropt.range(2))));

Dropt.list("magical_list")
    .add(Dropt.rule()
        .matchBlocks(["contenttweaker:magic_ore"])
        .replaceStrategy("REPLACE_ALL_IF_SELECTED")
        .addDrop(Dropt.drop()
        .selector( Dropt.weight(1), "EXCLUDED")
            .items([<contenttweaker:gem_shard>],Dropt.range(2))));