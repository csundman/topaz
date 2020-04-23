---------------------------------------------------------------------------------------------------
-- func: goto
-- auth: bluekirby0
-- desc: Goes to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:PrintToPlayer("You must enter a valid player name.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
		if (player:getHPP() == 100 and targ:getHPP() == 100 and player:getMaxMP() == player:getMP() and targ:getMaxMP() == targ:getMP()) then
			-- if (player:getZone():getRegionID() == targ:getZone():getRegionID()) then
				player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), 0, targ:getZoneID() );
			-- else
				-- player:PrintToPlayer( "You and your target must be in the same region to use this command!" );
			-- end
		else
			player:PrintToPlayer( "You and your target must have max HP and max MP to use this command!" );
		end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end