UPDATE `item_template` SET `subclass`=4, `name`='Certificate of Appreciation', `description`='May be used to give your character a boost', `Quality`=7, `Flags`=134217728, `ItemLevel`=1, `RequiredLevel`=0, `maxcount`=0, `dmg_min1`=0, `dmg_max1`=0, `bonding`=0 WHERE `entry`=20460;
INSERT INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES (20460, 'zhCN', '感谢证书', '可用于给你的角色带来各种提升。', 15050);
DELETE FROM `item_dbc` WHERE `ID`=20460;
INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`) VALUES
(20460, 15, 4, -1, -1, 32846, 0, 0);

SET @Entry := 6000000;

DELETE FROM `npc_text` WHERE `ID` BETWEEN @Entry AND @Entry+4;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@Entry, 'You don\'t have a certificate of appreciation! I can\'t help you unless you bring me one of those.'),
(@Entry+1, 'Which specialization would you like?'),
(@Entry+2, 'Are you absolutely certain you want to do this? I have to destroy all of your current equipment so make sure you save anything you don\'t want to lose!'),
(@Entry+3, 'Which continent would you like to unlock?'),
(@Entry+4, 'How may I help you??');

INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`) VALUES
(@Entry, 'zhCN', '你没有感谢证书！除非你给我带来一个，否则我无法帮助你。'),
(@Entry+1, 'zhCN', '您想要选择哪个专精?'),
(@Entry+2, 'zhCN', '你确定要这么做吗？我必须销毁你当前的所有装备，所以请确保你保存了任何你不想失去的装备!'),
(@Entry+3, 'zhCN', '您想要解锁哪个大陆?'),
(@Entry+4, 'zhCN', '我能帮你做什么吗?');

DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `unit_class`, `unit_flags`, `type`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 'Ambert Mendenhall', 'Appreciation Assistant', 'Speak', 60, 60, 35, 1, 1, 2, 7, 16777218, 'npc_appreciation');
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Entry, 'zhCN', '安伯特·门德哈尔', '感谢助理', 1);

DELETE FROM `creature_template_model` WHERE `CreatureID`=@Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(@Entry, 0, 21697, 1, 1);

DELETE FROM `creature` WHERE `id1`=@Entry;
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@Entry, 0, -8876.6, 633.35, 96.0925, 5.75228), -- Stormwind City
(@Entry, 1, 1652.66, -4434.37, 17.6583, 1.82083), -- Orgrimmar
(@Entry, 571, 5792.67, 561.894, 650.657, 1.02416); -- Dalaran
