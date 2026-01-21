@wrapMethod(W3Container) function PlayQuestItemFx() {
    var shouldSparkle: bool = theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'QuestShouldSparkle');
    
    if (shouldSparkle) {
        wrappedMethod();
    }
}