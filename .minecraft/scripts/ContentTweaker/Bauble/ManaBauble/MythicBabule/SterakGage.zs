/** #loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.item.IManaItem;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager; 
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.entity.IEntityLivingBase;
import mods.randomtweaker.cote.ManaBauble;
import mods.randomtweaker.cote.ManaWithItem;
import mods.randomtweaker.cote.ManaWithPool;
import mods.ctintegration.baubles.IBaubleInventory;

var sgg as ManaBauble = VanillaFactory.createManaBauble("sterak_gage", "RING", 500000);
sgg.onWornTick = function(bauble, wearer) {
   if(wearer instanceof IPlayer) {
    var player as IPlayer = wearer;
 if(wearer.health/wearer.maxHealth <= 0.3){
    player.setCooldown(bauble,1200);
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(100, 4));
    if(bauble.isIManaItem() == true){
        bauble.asIManaItem().updateMana(-50000);
    }
    
 }
    }
};

sgg.canReceiveManaFromPool = function(stack, world, pos) {
    return true;
};

sgg.register();

**/

