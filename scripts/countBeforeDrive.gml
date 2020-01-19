alarm[0]--;

if(alarm[0] == 0) {    
    //  inc state
    m_state++;
    alarm[0] = 1.5 * 60 * room_speed;
    
    with(o_Platform)
    {    
        var nearestBZ = instance_nearest(x, y, o_BuildingZone);
        if(distance_to_object(nearestBZ) < sprite_width / 2 &&
            nearestBZ.image_blend == c_blue &&
            nearestBZ.image_blend == image_blend)
            o_Controller.m_score += 10;
    }
    
    with(o_Gate)
    {
        if(distance_to_object(o_Robot) < sprite_get_width(sp_robot) / 2 &&
            image_blend == c_blue)
            o_Controller.m_score += 5;
    }
}
