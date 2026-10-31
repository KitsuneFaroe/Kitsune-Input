#macro COYOTE_TIME 30


if(on_ground){
	air_time --
	if(not collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, tilemap, true, true)){
		on_ground = false;
		air_time = 0;
	}
}else{
	air_time ++
}
