@wrapMethod(W3DamageManagerProcessor) function CalculateDamage(dmgInfo : SRawDamage, powerMod : SAbilityAttributeValue) : float {
    var finalDamage, reductionPerc : float;
    
    finalDamage = wrappedMethod(dmgInfo, powerMod);

    if (playerAttacker && attackAction && playerAttacker.IsLightAttack(attackAction.GetAttackName())) {
        reductionPerc = StringToFloat(theGame.GetInGameConfigWrapper().GetVarValue('UITweaks', 'LightAttackReduction'), 0.0);
        finalDamage *= 1.0 - (reductionPerc / 100.0);
    }

    return finalDamage;
}