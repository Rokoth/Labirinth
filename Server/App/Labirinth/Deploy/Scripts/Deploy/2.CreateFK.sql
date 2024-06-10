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
alter table location 
add constraint fk_location_world_id 
	foreign key(world_id) 
		references world(id) 
		on delete no action on update no action;


----release
--alter table release 
--add constraint fk_release_client_id 
--	foreign key(client_id) 
--		references client(id) 
--		on delete no action on update no action;

----release_architect
--alter table release_architect 
--add constraint fk_release_architect_release_id 
--	foreign key(release_id) 
--		references release(id) 
--		on delete no action on update no action;

----load_history
--alter table load_history 
--add constraint fk_load_history_client_id 
--	foreign key(client_id) 
--		references client(id) 
--		on delete no action on update no action;

--alter table load_history 
--add constraint fk_load_history_release_id 
--	foreign key(release_id) 
--		references release(id) 
--		on delete no action on update no action;

--alter table load_history 
--add constraint fk_load_history_release_architect_id 
--	foreign key(architect_id) 
--		references release_architect(id) 
--		on delete no action on update no action;



