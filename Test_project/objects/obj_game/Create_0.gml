randomize();
// fonts
draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

global.gamePaused = false;
global.textSpeed = .75;

global.iCamera = instance_create_layer(0,0,layer,obj_camera);

global.inventory = instance_create_layer(0,0,layer,obj_item_manager);

global.building = instance_create_layer(0,0,layer,buildings);

global.setup_pathway = instance_create_layer(0,0,layer,obj_setup_pathway);


global.player_has_level = 0;
global.player_hp = 100;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);

global.MenuOpen = false;

global.inventoryMenu = false;
with (instance_create_layer(0,0,layer,obj_button)){type = "Inventory"}

global.buildingMenu = false;
instance_create_layer(0,0,layer,obj_button);
with (instance_create_layer(0,0,layer,obj_button)){type = "Building"}

global.settingsMenu = false;
instance_create_layer(0,0,layer,obj_button);
with (instance_create_layer(0,0,layer,obj_button)){type = "Settings"}

global.levelUpMenu = false;
instance_create_layer(0,0,layer,obj_button);
with (instance_create_layer(0,0,layer,obj_button)){type = "LevelUp"}