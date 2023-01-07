#loader contenttweaker
#priority 2
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.ctintegration.util.RawLogger;

var rgn = VanillaFactory.createBaubleItem("redgem_necklace");
rgn.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        wearer.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(2,1));
    }
};
rgn.baubleType = "TRINKET";
rgn.register();
