---------------------------------------------------------------------------------------------------
-- func: addeffect
-- desc: Adds the given effect to the given player.
---------------------------------------------------------------------------------------------------

local stock = {
	["crystal"] = {
        0x1000,  25,2,     --Fire Crystal
		0x1001,  50,2,     --Ice Crystal
        0x1002,  25,2,     --Wind Crystal
        0x1003,  25,2,     --Earth Crystal
		0x1004,  50,2,	   --Lightning Crystal
        0x1005,  25,2,     --Water Crystal
		0x1006,	100,2,	   --Light Crystal
		0x1007, 100,2,	   --Dark Crystal
    },
	["boytz"] = {
        0x1020,  4445,1,     --Ether

        0x1037,   736,2,     --Echo Drops
        0x1010,   837,2,     --Potion
        0x43A6,     3,2,     --Wooden Arrow

        0x00D9,   900,3,     --Brass Flowerpot
        0x025D,   180,3,     --Pickaxe
        0x1036,  2387,3,     --Eye Drops
        0x1034,   290,3,     --Antidote
        0x43A8,     7,3,     --Iron Arrow
        0x43B8,     5,3      --Crossbow Bolt
    },
	["deegis"] = {
        12450, 18360, 1,     --Padded Cap
        12424,  9234, 1,     --Iron Mask
        12578, 28339, 1,     --Padded Armor
        12706, 15552, 1,     --Iron Mittens
        12449,  1471, 2,     --Brass Cap
        12440,   396, 2,     --Leather Bandana
        12577,  2236, 2,     --Brass Harness
        12568,   604, 2,     --Leather Vest
        12705,  1228, 2,     --Brass Mittens
        12696,   324, 2,     --Leather Gloves
        12448,   151, 3,     --Bronze Cap
        12576,   230, 3,     --Bronze Harness
        12552, 14256, 3,     --Chainmail
        12704,   126, 3,     --Bronze Mittens
        12680,  7614, 3,     --Chain Mittens
	},
	["amalasanda"] = {
            704,    144,    -- Bamboo Stick
            829,  21000,    -- Silk Cloth
            1240,   220,    -- Koma
            657,   7000,    -- Tama-Hagane
            1415, 73530,    -- Urushi
            1161,    40,    -- Uchitake
            1164,    40,    -- Tsurara
            1167,    40,    -- Kawahori-Ogi
            1170,    40,    -- Makibishi
            1173,    40,    -- Hiraishin
            1176,    40,    -- Mizu-Deppo
            1179,   125,    -- Shihei
            1182,   125,    -- Jusatsu
            1185,   125,    -- Kaginawa
            1188,   125,    -- Sairui-Ran
            1191,   125,    -- Kodoku
            1194,   125,    -- Shinobi-Tabi
            1471,   316,    -- Sticky Rice
            1554,   645,    -- Turmeric
            1555,  1585,    -- Coriander
            1590,   800,    -- Holy Basil
            1475,   990,    -- Curry Powder
            5164,  2595,    -- Ground Wasabi
            1652,   200,    -- Rice Vinegar
            5237,   492,    -- Shirataki
            2702,  5000,    -- Buckwheat Flour
            4928,  2331,    -- Katon: Ichi
            4931,  2331,    -- Hyoton: Ichi
            4934,  2331,    -- Huton: Ichi
            4937,  2331,    -- Doton: Ichi
            4940,  2331,    -- Raiton: Ichi
            4943,  2331,    -- Suiton: Ichi
            4949,  2849,    -- Jubaku: Ichi
            4952,  2849,    -- Hojo: Ichi
            4955,  2849,    -- Kurayami: Ichi
            4958,  2849,    -- Dokumori: Ichi
            4961,  2849,    -- Tonko: Ichi
            4964,  9590,    -- Monomi: Ichi
            4687, 60750,    -- Recall-Jugner
            4688, 60750,    -- Recall-Pashh
            4689, 60750,    -- Recall-Meriph
            4747, 34656,    -- Teleport-Vahzl
            4728, 34656,    -- Teleport-Yhoat
            4729, 34656,    -- Teleport-Altep
            4730, 34656,    -- Teleport-Holla
            4731, 34656,    -- Teleport-Dem
            4732, 34656,    -- Teleport-Mea
            4853, 10428,    -- Drain
            4855, 12850,    -- Aspir
            4857, 10428,    -- Blaze Spikes
            4869, 11953,    -- Warp
            4870, 37200,    -- Warp II
            4873, 32320,    -- Retrace
            4882, 67818,    -- Sleepga II
            4946, 13133,    -- Utsusemi: Ichi
            4994, 11830,    -- Mage's Ballad
        },
	["areebah"] = {
        636,  119,    -- Chamomile
        951,  110,    -- Wijnruit
        948,   60,    -- Carnation
        941,   80,    -- Red Rose
        949,   96,    -- Rain Lily
        956,  120,    -- Lilac
        957,  120,    -- Amaryllis
        958,  120,    -- Marguerite
        2370, 520,    -- Flower Seeds
		},
	["gekko"] = {
        4150,  2387,    -- Eye Drops
        4148,   290,    -- Antidote
        4151,   367,    -- Echo Drops
        4112,   837,    -- Potion
        4128,  4445,    -- Ether
        4365,   120,    -- Rolanberry
        189,  36000,    -- Autumn's End
        188,  31224,    -- Acolyte's Grief
        5085, 50400,    -- Scroll of Regen IV
    }
}

local stockNum = {
	["1"] = "crystal",
	["2"] = "boytz",
	["3"] = "deegis",
	["4"] = "amalasanda",
	["5"] = "areebah",
	["6"] = "gekko"
}

local generalShop = {
	["amalasanda"] = true,
	["areebah"] = true,
	["gekko"] = true
}

local stockAlias = {
	["crystals"] = "crystal"
}

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player, itemType)
	if(itemType == "help") then
		helpString = "Available shops are:"
		for key,value in pairs(stockNum) do
			helpString = string.format("%s -%s-", helpString, stockNum[key]);
		end
		player:PrintToPlayer(helpString);
		return;
	end
	if(stock[itemType] == null) then
		if(stockNum[itemType] == null) then
			if(stockAlias[itemType] == null) then
				player:PrintToPlayer( "Not a valid shop." );
				return;
			else
				player:PrintToPlayer( string.format("Welcome to the %s shop!", stockAlias[itemType]));
				itemType = stockAlias[itemType]
			end
		else
			player:PrintToPlayer( string.format("Welcome to the %s shop!", stockNum[itemType]));
			itemType = stockNum[itemType];
		end
	else
		player:PrintToPlayer( string.format("Welcome to the %s shop!", itemType));
	end 
	
	if(generalShop[itemType]) then
		tpz.shop.general(player, stock[itemType])
	else
		tpz.shop.nation(player, stock[itemType], tpz.nation.BASTOK)
	end
end