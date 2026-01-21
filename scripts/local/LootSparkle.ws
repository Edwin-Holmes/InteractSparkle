@wrapMethod(W3ActorRemains) function OnFocusModeEnabled( enabled : bool ){
    var shouldSparkle: bool = theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'LootShouldSparkle');
    
    if (shouldSparkle) {
        return wrappedMethod(enabled);
    }
}