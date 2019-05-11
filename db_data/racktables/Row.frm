TYPE=VIEW
query=select `O`.`id` AS `id`,`O`.`name` AS `name`,`L`.`id` AS `location_id`,`L`.`name` AS `location_name` from ((`racktables`.`Object` `O` left join `racktables`.`EntityLink` `EL` on(`O`.`id` = `EL`.`child_entity_id` and `EL`.`parent_entity_type` = \'location\' and `EL`.`child_entity_type` = \'row\')) left join `racktables`.`Object` `L` on(`EL`.`parent_entity_id` = `L`.`id` and `L`.`objtype_id` = 1562)) where `O`.`objtype_id` = 1561
md5=67ca5b55bfc5686cee756f7b1d1f6623
updatable=0
algorithm=0
definer_user=racktables
definer_host=%
suid=2
with_check_option=0
timestamp=2019-05-11 00:50:33
create-version=2
source=SELECT O.id, O.name, L.id AS location_id, L.name AS location_name\n  FROM `Object` O\n  LEFT JOIN `EntityLink` EL ON O.id = EL.child_entity_id AND EL.parent_entity_type = \'location\' AND EL.child_entity_type = \'row\'\n  LEFT JOIN `Object` L ON EL.parent_entity_id = L.id AND L.objtype_id = 1562\n  WHERE O.objtype_id = 1561
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `O`.`id` AS `id`,`O`.`name` AS `name`,`L`.`id` AS `location_id`,`L`.`name` AS `location_name` from ((`racktables`.`Object` `O` left join `racktables`.`EntityLink` `EL` on(`O`.`id` = `EL`.`child_entity_id` and `EL`.`parent_entity_type` = \'location\' and `EL`.`child_entity_type` = \'row\')) left join `racktables`.`Object` `L` on(`EL`.`parent_entity_id` = `L`.`id` and `L`.`objtype_id` = 1562)) where `O`.`objtype_id` = 1561
mariadb-version=100314
