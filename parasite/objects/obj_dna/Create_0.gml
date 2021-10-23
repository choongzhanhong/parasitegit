/// @description Insert description here
// You can write your code in this editor

count = 0
maxCount = 1.5

//check if DNA has already been collected
for (var i=0; i < array_length(global.collected_dna); i++) {
	if (id == global.collected_dna[i]) {
		instance_destroy(self)
	}
}

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -16;
x_health_offset = -16;