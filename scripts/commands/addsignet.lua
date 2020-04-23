---------------------------------------------------------------------------------------------------
-- func: addsignet
-- desc: adds signet to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!addsignet");
end;

function onTrigger(player)
    local pNation  = player:getNation()
    local pRank    = player:getRank()
	
	local duration = (pRank + getNationRank(pNation) + 3) * 3600
    player:delStatusEffectsByFlag(tpz.effectFlag.INFLUENCE, true)
    player:addStatusEffect(tpz.effect.SIGNET, 0, 0, duration)
end;