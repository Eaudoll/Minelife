#loader contenttweaker
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var dustblock as Block = VanillaFactory.createBlock("dust_block",<blockmaterial:sand>);
dustblock.creativeTab = <creativetab:primitive_existence>;
dustblock.toolLevel = 1;
dustblock.toolClass = "shovel";
dustblock.blockSoundType = <soundtype:sand>;
dustblock.register();