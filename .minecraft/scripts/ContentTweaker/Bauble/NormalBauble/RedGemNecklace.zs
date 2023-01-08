#loader contenttweaker
#priority 2
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.ctintegration.util.RawLogger;

var rgn = VanillaFactory.createBaubleItem("redgem_necklace");

rgn.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        var maxHealth = player.getAttribute("generic.maxHealth").getBaseValue() - 4;
		player.getAttribute("generic.maxHealth").setBaseValue(maxHealth);
    }
};

rgn.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        var maxHealth = player.getAttribute("generic.maxHealth").getBaseValue() + 4;
		player.getAttribute("generic.maxHealth").setBaseValue(maxHealth);
    }
};



rgn.baubleType = "TRINKET";
rgn.register();
