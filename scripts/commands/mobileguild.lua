---------------------------------------------------------------------------------------------------
-- func: mobileguild
-- desc: opens up guild shops
---------------------------------------------------------------------------------------------------

local stock = {
	["bonecraft1"] = 514,
	["clothcraft1"] = 516,
	["fishing1"] = 517,
	["fishing2"] = 518,
	["fishing3"] = 5182,
	["fishing4"] = 519,
	["fishing5"] = 520,
	["fishing6"] = 521,
	["fishing7"] = 522,
	["fishing8"] = 523,
	["fishing9"] = 524,
	["fishing10"] = 525,
	["alchemy1"] = 5262,
	["goldsmithing1"] = 5272,
	["goldsmithing2"] = 528,
	["leathercraft1"] = 529,
	["cooking1"] = 530,
	["smithing1"] = 531,
	["smithing2"] = 532,
	["woodworking1"] = 534,
	["tenshodo1"] = 60417,
	["tenshodo2"] = 60418,
	["tenshodo3"] = 60419,
	["tenshodo4"] = 60420,
	["tenshodo5"] = 60421,
	["tenshodo6"] = 60422,
	["tenshodo7"] = 60423,
	["tenshodo8"] = 60424,
	["alchemy2"] = 60425,
	["fishing11"] = 60426,
	["smithing3"] = 60427,
	["woodworking2"] = 60428,
	["goldsmithing3"] = 60429,
	["clothcraft2"] = 60430,
	["tenshodo9"] = 60431
}

local stockAlias = {
	["woodworking"] = "woodworking1",
	["clothcraft"] = "clothcraft1",
	["leathercraft"] = "leathercraft1",
	["cooking"] = "cooking1",
	["goldsmithing"] = "goldsmithing1",
	["smithing"] = "smithing1",
	["alchemy"] = "alchemy1",
	["bonecraft"] = "bonecraft1",
	["fishing"] = "fishing1"
}

cmdprops =
{
    permission = 1,
    parameters = "ss"
	
};

function onTrigger(player, itemType)
		if(itemType == "help") then
		a = {}
		for n in pairs(stock) do table.insert(a, n) end
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
	if(stock[itemType] == null) then
		if(stockAlias[itemType] == null) then
			player:PrintToPlayer( "Not a valid shop." );
			return;
		else
			player:PrintToPlayer( string.format("Welcome to the %s shop!", stockAlias[itemType]));
			itemType = stockAlias[itemType]
		end
	else
		player:PrintToPlayer( string.format("Welcome to the %s shop!", itemType));
	end
    player:sendGuild(stock[itemType],1,23,0)
end