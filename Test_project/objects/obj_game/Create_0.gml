randomize();

global.gamePaused = false;
global.textSpeed = .75;

global.iCamera = instance_create_layer(0,0,layer,obj_camera);

global.inventory = instance_create_layer(0,0,layer,obj_item_manager);

global.building = instance_create_layer(0,0,layer,buildings);


surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);