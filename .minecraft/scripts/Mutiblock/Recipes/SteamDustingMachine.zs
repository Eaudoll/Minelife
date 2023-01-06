import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;

var definition as ComponentDefinition = MBDRegistry.getDefinition("minelife:steam_furnace");
var  sfr = definition as ControllerDefinition;

sfr.recipeMap.start()
    .duration(1000)
    .inputItems(<ore:ingotIron>)
    .inputItems(<contenttweaker:charcoke>)
    .outputItems(<techreborn:dust:27>*2)
    .buildAndRegister();