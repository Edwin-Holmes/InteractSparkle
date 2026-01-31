@addField(CR4Player) 
    var uitInteractDist: float;

@wrapMethod(CR4Player) function OnSpawned( spawnData : SEntitySpawnData ) {
    uitInteractDist = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 3.5);
    return wrappedMethod(spawnData);
}

@wrapMethod(CR4IngameMenu) function OnClosingMenu() {
    if (thePlayer) {
        thePlayer.uitInteractDist = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 3.5);
    }

    return wrappedMethod();
}

@wrapMethod(CR4Player) function OnPlayerTickTimer( deltaTime : float ) {
    this.interactDist = this.uitInteractDist;
    wrappedMethod(deltaTime);
}
