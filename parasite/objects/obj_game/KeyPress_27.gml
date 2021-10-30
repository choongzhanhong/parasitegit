/// @description pause
// You can write your code in this editor
if (room==rm_1) or (room==rm_2) or (room==rm_3) {
	paused = !paused
}

if(paused){
    instance_deactivate_all(1);
	
}else{
    instance_activate_all();
}