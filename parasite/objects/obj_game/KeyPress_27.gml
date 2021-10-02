/// @description pause
// You can write your code in this editor

paused = !paused


if(paused){
    instance_deactivate_all(1);
}else{
    instance_activate_all();
}