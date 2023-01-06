import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
 
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<variedcommodities:skull>)
        .addMob(MobInfo.create()
            .setMob("minelife:robber_boss")
            .setCount(1)
            .setOffset(0,0,0)
            .setSpread(0,0,0)
        )
);