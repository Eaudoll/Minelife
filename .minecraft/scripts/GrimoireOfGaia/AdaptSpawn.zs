#loader crafttweaker reloadable
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent){
    val world as IWorld = event.world;
    val entity as IEntity = event.entity;
    val definition as IEntityDefinition = entity.definition;
    if(!world.remote){
        if(entity instanceof IEntityLivingBase){
            if(!entity instanceof IPlayer){
                if(definition.id has "ofgaia"){
                    if(!(definition.id has "orc"||definition.id has "bone_knight"||definition.id has "flesh_lich"))
                        if(world.dimension == 0){
                            event.cancel();
                        }
                    }
                }
            }
        }
});
