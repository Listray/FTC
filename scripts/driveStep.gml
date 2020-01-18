alarm[0]--;

if(alarm[0] == 30 * room_speed)
{
    with(o_Platform)
    {
        var nearestBZ = instance_nearest(x, y, o_BuildingZone);
        if(distance_to_object(nearestBZ) < sprite_height / 2)
            m_wasInBZ = true
    }
}
else if(alarm[0] == 0)
{
    with(o_Stone)
    {
        if (m_gatePoint == c_blue)
            o_Controller.m_score++
            
        if (position_meeting(x, y, o_Platform) && m_gatePoint = c_blue )
            o_Controller.m_score++
    }
    
    with(o_Platform)
    {   
        if(m_wasInBZ)
        {         
            var nearestBZ = instance_nearest(x, y, o_BuildingZone);
            if(distance_to_object(nearestBZ) > sprite_width / 2 &&
                nearestBZ.image_blend == c_blue &&
                nearestBZ.image_blend == image_blend)
                o_Controller.m_score += 15
        }
    }
    
    with(o_Robot)
    {
        var nearestBZ = instance_nearest(x, y, o_BuildingZone);
        if(distance_to_object(nearestBZ) < sprite_width / 2 && nearestBZ.image_blend == c_blue)
                o_Controller.m_score += 5
    }
    
    with(o_Bot)
    {
        if(image_blend == c_blue)
        {
        var nearestBZ = instance_nearest(x, y, o_BuildingZone);
        if(distance_to_object(nearestBZ) < sprite_width / 2 && nearestBZ.image_blend == c_blue)
                o_Controller.m_score += 5
        }
    }
    
    room_goto(r_score)
}

