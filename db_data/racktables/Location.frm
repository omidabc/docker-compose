TYPE=VIEW
query=select `O`.`id` AS `id`,`O`.`name` AS `name`,`O`.`has_problems` AS `has_problems`,`O`.`comment` AS `comment`,`P`.`id` AS `parent_id`,`P`.`name` AS `parent_name` from (`racktables`.`Object` `O` left join (`racktables`.`Object` `P` join `racktables`.`EntityLink` `EL` on(`EL`.`parent_entity_id` = `P`.`id` and `P`.`objtype_id` = 1562 and `EL`.`parent_entity_type` = \'location\' and `EL`.`child_entity_type` = \'location\')) on(`EL`.`child_entity_id` = `O`.`id`)) where `O`.`objtype_id` = 1562
md5=e8f5d1b46d055564723357391bf4a8ce
updatable=0
algorithm=0
definer_user=racktables
definer_host=%
suid=2
with_check_option=0
timestamp=2019-05-11 00:50:33
create-version=2
source=SELECT O.id, O.name, O.has_problems, O.comment, P.id AS parent_id, P.name AS parent_name\nFROM `Object` O\nLEFT JOIN (\n  `Object` P INNER JOIN `EntityLink` EL\n  ON EL.parent_entity_id = P.id AND P.objtype_id = 1562 AND EL.parent_entity_type = \'location\' AND EL.child_entity_type = \'location\'\n) ON EL.child_entity_id = O.id\nWHERE O.objtype_id = 1562
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `O`.`id` AS `id`,`O`.`name` AS `name`,`O`.`has_problems` AS `has_problems`,`O`.`comment` AS `comment`,`P`.`id` AS `parent_id`,`P`.`name` AS `parent_name` from (`racktables`.`Object` `O` left join (`racktables`.`Object` `P` join `racktables`.`EntityLink` `EL` on(`EL`.`parent_entity_id` = `P`.`id` and `P`.`objtype_id` = 1562 and `EL`.`parent_entity_type` = \'location\' and `EL`.`child_entity_type` = \'location\')) on(`EL`.`child_entity_id` = `O`.`id`)) where `O`.`objtype_id` = 1562
mariadb-version=100314
