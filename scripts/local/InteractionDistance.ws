@addField(CR4Player) 
    var uitInteractDist: float;

@wrapMethod(CR4Player) function OnSpawned( spawnData : SEntitySpawnData ) {
    uitInteractDist = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 3.5);
    return wrappedMethod(spawnData);
}

@wrapMethod(CR4IngameMenu) function OnClosingMenu() {
    var player: CR4Player;
    player = (CR4Player)thePlayer;
    if (player) {
        player.uitInteractDist = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 3.5);
    }

    return wrappedMethod();
}

@wrapMethod(CR4Player) function OnPlayerTickTimer( deltaTime : float ) {
    this.interactDist = this.uitInteractDist;
    wrappedMethod(deltaTime);
}

@wrapMethod(CR4HudModuleInteractions) function GetFocusInteractionRadius() : float {
    var myInteractRadius: float;
    myInteractRadius = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'InteractDistance'), 3.5);
    if (false) {
        return wrappedMethod();
    }

    return uitInteractRadius;
}
