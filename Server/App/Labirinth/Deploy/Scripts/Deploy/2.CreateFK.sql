----fk_inventory_person
alter table inventory 
add constraint fk_inventory_person_id 
	foreign key(person_id) 
		references person(id) 
		on delete no action on update no action;

----fk_person_user
alter table person 
add constraint fk_person_user_id 
	foreign key(userid) 
		references "user"(id) 
		on delete no action on update no action;

----fk_location_world
alter table "location"
add constraint fk_location_world_id 
	foreign key(world_id) 
		references world(id) 
		on delete no action on update no action;

----fk_characteristic_person
alter table characteristic 
add constraint fk_characteristic_person_id 
	foreign key(person_id) 
		references person(id) 
		on delete no action on update no action;
		
----fk_point_point_type
alter table point 
add constraint fk_point_point_type_id 
	foreign key(point_type_id) 
		references point_type(id) 
		on delete no action on update no action;
		

