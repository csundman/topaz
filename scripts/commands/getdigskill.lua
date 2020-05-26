---------------------------------------------------------------------------------------------------
-- func: setskill <skill name or ID> <skill level> <target>
-- desc: sets target's level of specified skill
---------------------------------------------------------------------------------------------------
require("scripts/globals/status")

cmdprops =
{
    permission = 1,
    parameters = ""
}

function error(player, msg)
    player:PrintToPlayer(msg)
end

function onTrigger(player)
    player:PrintToPlayer(string.format("Skill: %s", (player:getCharSkillLevel(tpz.skill.DIG)/10)))
end
