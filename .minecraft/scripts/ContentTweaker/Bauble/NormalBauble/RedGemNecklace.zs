#loader contenttweaker
#priority 2
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.ctintegration.util.RawLogger;

var rgn = VanillaFactory.createBaubleItem("redgem_necklace");
rgn.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        RawLogger.logRaw(wearer.nbt.asString());
    }
};
rgn.baubleType = "TRINKET";
rgn.register();
