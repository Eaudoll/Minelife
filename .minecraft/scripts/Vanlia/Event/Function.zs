#priority 100
import crafttweaker.events.IEventManager; 
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockState;

function UpdateBlock(CurrentItem as IItemStack,AcceptBlock as IBlockState,SettedBlock as IBlockState){

    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    val player as IPlayer = event.player;
    val pos as IBlockPos = event.position;
    val world as IWorld = event.world;
    if(CurrentItem.matches(player.currentItem)){
        var block as IBlock = event.block;
        var item as IItemStack = player.currentItem;
            if(world.getBlockState(pos) == AcceptBlock){
                world.setBlockState(<blockstate:minecraft:air>,pos);
                world.setBlockState(SettedBlock,pos);
                item.mutable().shrink(1);
            }
    }
  }
);
}