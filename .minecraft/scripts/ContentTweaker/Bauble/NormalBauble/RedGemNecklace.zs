#loader contenttweaker
#priority 2
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.ctintegration.util.RawLogger;

/** var rgn = VanillaFactory.createBaubleItem("redgem_necklace");
rgn.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        val player as IPlayer = wearer;
        player.update({player.data + {"rgn_tick": 0 as int});
    }
};
rgn.onWornTick = function(bauble, wearer) {
    if (wearer instanceof IPlayer) {
        val player as IPlayer = wearer;
        var data as IData = player.data;
        if (data has "rgn_tick") {
            var rgn_tick as int = data.memberGet("rgn_tick").asInt();
            player.update({data + {"rgn_tick": rgn_tick + 1});
            if (rgn_tick == 20) {
                player.update({data + {"rgn_tick": 0});
                player.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(1,0));   
            }
        }
    }
};
rgn.baubleType = "TRINKET";
rgn.register();
**/

var rgn = VanillaFactory.createBaubleItem("redgem_necklace");
rgn.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        wearer.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(2,1));
    }
};
rgn.baubleType = "TRINKET";
rgn.register();
