---------------------------------------------------------------------------------------------------
-- func: homepointmax
-- auth: bluekirby0
-- desc: Sends the player to their homepoint if at maxHP.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    if (player:getHPP() == 100 and player:getMaxMP() == player:getMP()) then
        player:warp();
    else
        player:PrintToPlayer( "You must have max HP and MP to use this command!" );
    end
end