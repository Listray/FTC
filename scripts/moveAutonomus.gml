switch(m_directions[m_i]) {
    case "Forward": {
        with(o_Robot) {
            if(phy_speed_x > m_maxSpd)
                phy_speed_x = m_maxSpd
            else
                phy_speed_x += lengthdir_x(m_acceleration, -phy_rotation)
                
            if(phy_speed_x > m_maxSpd)
                phy_speed_x = m_maxSpd
            else 
                phy_speed_y += lengthdir_y(m_acceleration, -phy_rotation)
        }
        break;
    }
    case "Backward": {
        with(o_Robot) {
            if(phy_speed_x > m_maxSpd)
                phy_speed_x = m_maxSpd
            else
                phy_speed_x += lengthdir_x(-m_acceleration, -phy_rotation)
                
            if(phy_speed_x > m_maxSpd)
                phy_speed_x = m_maxSpd
            else 
                phy_speed_y += lengthdir_y(-m_acceleration, -phy_rotation)
        }
        break;
    }
}
