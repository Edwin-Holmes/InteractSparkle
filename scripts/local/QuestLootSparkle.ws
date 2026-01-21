@wrapMethod(W3Container) function PlayQuestItemFx() {
    var shouldSparkle: bool = theGame.GetInGameConfigWrapper().GetVarValue('InteractSparkle', 'QuestShouldSparkle');
    
    if (shouldSparkle) {
        return wrappedMethod();
    }
}