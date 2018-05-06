-- FIXING INFORMATION MENU ON UNDERCITY
SET @npc_ntry:=5624;
SET @gossip_id:=10769;
UPDATE `world`.`creature_template`
SET `gossip_menu_id`=@gossip_id
WHERE `entry`=@npc_ntry;

-- FIXING INFORMATION MENU OF Shattrath City Peacekeeper
SET @npc_ntry:=19687;
SET @gossip_id:=8282;
UPDATE `world`.`creature_template`
SET `gossip_menu_id`=@gossip_id
WHERE `entry`=@npc_ntry;

-- FIX THE LAS OPTION GOSSIP OF CRETURE_TEMPLATE 8282
UPDATE `world`.`gossip_menu_option`
SET `OptionType` = 1, `OptionNpcFlag` = 1
WHERE `MenuId` = 8282 AND `OptionIndex` = 11;

-- UPDATE THE POSITION OF A DIRECTIONS SILVERMOON NPC THAT WAS UNDER GROUD
UPDATE creature 
SET `orientation`=1.735306, 
	`position_x`=9328.039063, 
	`position_y`=-7284.257324, 
	`position_z`=13.779156
WHERE guid=74566;



