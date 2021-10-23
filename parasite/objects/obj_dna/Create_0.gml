/// @description Insert description here
// You can write your code in this editor

count = 0


//check if DNA has already been collected
for (var i=0; i < array_length(global.collected_dna); i++) {
	if (id == global.collected_dna[i]) {
		instance_destroy(self)
	}
}