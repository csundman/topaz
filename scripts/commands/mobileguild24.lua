---------------------------------------------------------------------------------------------------
-- func: mobileguild24
-- desc: opens up 24 hour guild shops
---------------------------------------------------------------------------------------------------
require("scripts/globals/shop")
require("scripts/globals/crafting")
require("scripts/globals/settings")
require("scripts/globals/status")

local stockAlias = {
	["woodworking"] = tpz.skill.WOODWORKING,
	["clothcraft"] = tpz.skill.CLOTHCRAFT,
	["leathercraft"] = tpz.skill.LEATHERCRAFT,
	["cooking"] = tpz.skill.COOKING,
	["goldsmithing"] = tpz.skill.GOLDSMITHING,
	["smithing"] = tpz.skill.SMITHING,
	["alchemy"] = tpz.skill.ALCHEMY,
	["bonecraft"] = tpz.skill.BONECRAFT
}

local guildAlias = {
	["woodworking"] = guild.woodworking,
	["clothcraft"] = guild.clothcraft,
	["leathercraft"] = guild.leathercraft,
	["cooking"] = guild.cooking,
	["goldsmithing"] = guild.goldsmithing,
	["smithing"] = guild.smithing,
	["alchemy"] = guild.alchemy,
	["bonecraft"] = guild.bonecraft
}

cmdprops =
{
    permission = 1,
    parameters = "ss"
	
};

function onTrigger(player, itemType)
		if(itemType == "help") then
		a = {}
		for n in pairs(stockAlias) do table.insert(a, n) end
		table.sort(a)
		helpString = "Available shops are: "
		local i = 1;
		for key,value in ipairs(a) do
			helpString = helpString .. "-" .. value .. "-";
			if(i%10 == 0) then
				player:PrintToPlayer(helpString);
				helpString = "";
				i = 0;
			end
			i = i+1;
		end
		helpString = helpString .. " ";
		player:PrintToPlayer(helpString);
		return;
	end
	if(stockAlias[itemType] == null) then
		player:PrintToPlayer( "Not a valid shop." );
		return;
	else
		player:PrintToPlayer( string.format("Welcome to the %s shop!", itemType));
	end
    local guildRank = player:getSkillRank(stockAlias[itemType])
    local stock = tpz.shop.generalGuildStock[guildAlias[itemType]]
    tpz.shop.generalGuild(player, stock, guildRank)
end