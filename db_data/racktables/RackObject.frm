TYPE=VIEW
query=select `racktables`.`Object`.`id` AS `id`,`racktables`.`Object`.`name` AS `name`,`racktables`.`Object`.`label` AS `label`,`racktables`.`Object`.`objtype_id` AS `objtype_id`,`racktables`.`Object`.`asset_no` AS `asset_no`,`racktables`.`Object`.`has_problems` AS `has_problems`,`racktables`.`Object`.`comment` AS `comment` from `racktables`.`Object` where `racktables`.`Object`.`objtype_id` not in (1560,1561,1562)
md5=0c4c5a65dd6f3405c7023e6f2a6a193a
updatable=1
algorithm=0
definer_user=racktables
definer_host=%
suid=2
with_check_option=0
timestamp=2019-05-11 00:50:33
create-version=2
source=SELECT id, name, label, objtype_id, asset_no, has_problems, comment FROM `Object`\n WHERE `objtype_id` NOT IN (1560, 1561, 1562)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `racktables`.`Object`.`id` AS `id`,`racktables`.`Object`.`name` AS `name`,`racktables`.`Object`.`label` AS `label`,`racktables`.`Object`.`objtype_id` AS `objtype_id`,`racktables`.`Object`.`asset_no` AS `asset_no`,`racktables`.`Object`.`has_problems` AS `has_problems`,`racktables`.`Object`.`comment` AS `comment` from `racktables`.`Object` where `racktables`.`Object`.`objtype_id` not in (1560,1561,1562)
mariadb-version=100314
