#loader crafttweaker reloadable
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;
import mods.ctintegration.util.RawLogger;

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    val entity as IEntity = event.target;
    val definition as IEntityDefinition = entity.definition;
    val id as string = definition.id;

    if(entity instanceof IEntityLivingBase){
            RawLogger.logRaw(id);
    }
});