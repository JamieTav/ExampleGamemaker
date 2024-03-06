//[wave,type,spawnpoint,delay]

waves = ds_list_create()
ds_list_add(waves,[0,obj_enemy1, 0, 0]);
ds_list_add(waves,[0,obj_enemy1, 0, 50]);
ds_list_add(waves,[0,obj_enemy1, 0, 100]);
ds_list_add(waves,[0,obj_enemy2, 0, 0]);
ds_list_add(waves,[0,obj_enemy2, 0, 50]);
ds_list_add(waves,[0,obj_enemy2, 0, 100]);

ds_list_add(waves,[1,obj_enemy1, 0, 10]);
ds_list_add(waves,[1,obj_enemy1, 0, 20]);
ds_list_add(waves,[1,obj_enemy1, 0, 30]);
ds_list_add(waves,[1,obj_enemy2, 0, 40]);
ds_list_add(waves,[1,obj_enemy2, 0, 50]);
ds_list_add(waves,[1,obj_enemy2, 0, 60]);

ds_list_add(waves,[2,obj_enemy1, 1, 10]);
ds_list_add(waves,[2,obj_enemy1, 1, 20]);
ds_list_add(waves,[2,obj_enemy1, 1, 30]);
ds_list_add(waves,[2,obj_enemy2, 1, 40]);
ds_list_add(waves,[2,obj_enemy2, 1, 50]);
ds_list_add(waves,[2,obj_enemy2, 1, 60]);

spawn[0,0] = 192
spawn[0,1] = 12
spawn[1,0] = 384
spawn[1,1] = 12