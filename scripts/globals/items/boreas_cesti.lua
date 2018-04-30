-----------------------------------------
-- ID: 18359
-- Item: Boreas Cesti
-- Additional Effect: Wind Damage
-- 100% proc rate
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local dmg = math.random(4,15);
    local params = {};
    params.bonusmab = 0;
    params.includemab = false;
    dmg = addBonusesAbility(player, ELE_WIND, target, dmg, params);
    dmg = dmg * applyResistanceAddEffect(player,target,ELE_WIND,0);
    dmg = adjustForTarget(target,dmg,ELE_WIND);
    dmg = finalMagicNonSpellAdjustments(player,target,ELE_WIND,dmg);

    local message = dsp.msg.basic.ADD_EFFECT_DMG;
    if (dmg < 0) then
        message = dsp.msg.basic.ADD_EFFECT_HEAL;
    end

    return dsp.subEffect.WIND_DAMAGE,message,dmg;
end;