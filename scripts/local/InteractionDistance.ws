@wrapMethod(CR4Player) function OnSpawned( spawnData : SEntitySpawnData ) {
    var distance: float = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 4.5);
    
    interactDist = distance;

    return wrappedMethod(spawnData);
}