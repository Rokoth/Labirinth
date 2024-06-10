INSERT INTO "user"(
	id, name, description, login, password, version_date, is_deleted)
	VALUES (uuid_generate_v4(), 'admin', 'admin', 'admin', sha512('admin'), now(), false);

insert into world(
	id, name, description, version_date, is_deleted)
	VALUES (uuid_generate_v4(), 'main', 'main', now(), false);

insert into "location"(id, name, description, world_id, x, y, version_date, is_deleted)
values(uuid_generate_v4(), 'main', 'main', (select id from world limit 1), 1, 1, now(), false);

insert into point_type(id, name, description, version_date, is_deleted)
values(uuid_generate_v4(), 'empty', 'empty', now(), false);

insert into point(id, name, description, location_id, point_type_id, x, y, version_date, is_deleted)
select uuid_generate_v4(),  'empty', 'empty', "location".id, point_type.id, _generateX.x, _generateY.y, now(), false
from (select generate_series(1, 100) as x) _generateX, (select generate_series(1, 100) as y) _generateY, "location", point_type;

