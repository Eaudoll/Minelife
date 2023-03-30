import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

val craftshelf = <requious:craftshelf>.asBlock().definition;
craftshelf.setHarvestLevel("axe", 0);

val blocks as IItemStack[] = [<requious:mud_furnace>,<requious:basic_furnace>,<requious:craftshelf>,<requious:mix_furnace>,<requious:brick_kiln>,<requious:grinder>];
for i, block in blocks{
    val blockd = block.asBlock().definition;
    blockd.creativeTab = <creativetab:primitive_existence>;
}