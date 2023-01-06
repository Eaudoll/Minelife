#loader contenttweaker
#priority 2
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.ctintegration.util.RawLogger;

var sms = VanillaFactory.createBaubleItem("see_myself");
sms.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        RawLogger.logRaw(wearer.nbt.asString());
    }
};
sms.baubleType = "TRINKET";
sms.register();