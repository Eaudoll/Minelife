#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

val tab2 as CreativeTab = VanillaFactory.createCreativeTab("ore", <item:contenttweaker:magnetite>);
tab2.register();

function blockAdder(name as string, blockmaterial as BlockMaterial, blockLayer as string, blockHardness as float, toolLevel as int, toolClass as string) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.creativeTab = <creativetab:ore>;
    block.blockLayer = blockLayer;
    block.blockHardness = blockHardness;
    block.toolLevel = toolLevel;
    block.toolClass = toolClass;
    block.register();
}

var ore as string[] = [
   "hematite","siderite","pyrite","magnetite","graphite_ore","oil_ore","magic_ore"
];

for Ore in ore {
    blockAdder(Ore,<blockmaterial:rock>,"SOLID", 5.0, 1.0, "pickaxe");
}


