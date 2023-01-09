#loader contenttweaker
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
import mods.randomtweaker.cote.ManaItem;

var sgg as ManaBauble = VanillaFactory.createManaBauble("sterak_gage","RING",1000000);


sgg.onEquipped = function(bauble,wearer){
        val now_max_health = wearer.getAttribute("generic.maxHealth");
        val maxHealth = now_max_health.getBaseValue() + 40;
		    now_max_health.setBaseValue(maxHealth);
};


sgg.onWornTick = function(bauble,wearer) {
   if(wearer instanceof IPlayer){
            if(wearer.dimension == -1){
                val player as IPlayer = wearer;
                player.sendStatusMessage(format.darkRed("Sterak is waking..."));
                wearer.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(2,1));
                wearer.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(2,2));
                wearer.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(2,2));
            }
        }
    };


sgg.onUnequipped= function(bauble,wearer){
    val now_max_health = wearer.getAttribute("generic.maxHealth");
    if(wearer instanceof IPlayer){
        if(now_max_health.getBaseValue() >= 40){
        val maxHealth = now_max_health.getBaseValue() - 40;
		now_max_health.setBaseValue(maxHealth);
        } 
    }
};

sgg.canReceiveManaFromPool = function(stack, world, pos) {
    return true;
};

sgg.register();
