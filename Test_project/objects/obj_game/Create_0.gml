randomize();
// fonts
draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

global.day = 0;
global.hour = 0;

global.total_zombie_kill_count = 0;

global.gamePaused = false;
global.textSpeed = .75;

global.iCamera = instance_create_layer(0,0,layer,obj_camera);

global.inventory = instance_create_layer(0,0,layer,obj_item_manager);

global.building = instance_create_layer(0,0,layer,buildings);

global.setup_pathway = instance_create_layer(0,0,layer,obj_setup_pathway);

global.light = instance_create_layer(0,0,layer,obj_surface_light);


global.player_has_level = 0;
global.max_xp_count = 100;
global.player_xp = 0;
global.player_hp = 100;
global.player_hp_max = 100;
global.player_stamina = 100;
global.player_stamina_max = 100;
global.player_money = 0;
global.player_x = -1;
global.player_y = -1;


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

global.game_save_slot = 0;
global.save_button = false;
global.load_button = false;

