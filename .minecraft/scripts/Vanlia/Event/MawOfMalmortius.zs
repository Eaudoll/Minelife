#loader crafttweaker reloadable
import crafttweaker.events.IEventManager; 
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;



events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    var player as IPlayer = event.player;
        if(<minelife:maw_of_malmortius:*>.matches(player.currentItem)|<minelife:maw_of_malmortius>.matches(player.currentItem)){
            player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 3));
            player.setCooldown(<minelife:maw_of_malmortius>,1200);
            player.sendStatusMessage(format.darkPurple("You have been protected."));
        }
});