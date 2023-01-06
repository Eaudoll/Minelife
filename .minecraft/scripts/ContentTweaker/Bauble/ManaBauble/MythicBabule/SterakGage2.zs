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

var sgg as ManaItem = VanillaFactory.createManaItem("sterak_gage",1000000);
sgg.register();