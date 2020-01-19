switch(m_directions[m_i]) {
    case "Clockwise": {
        with(o_Robot) {
            phy_rotation += m_turnSpd
        }
        break;
    }
    case "Anticlock": {
        with(o_Robot) {
            phy_rotation -= m_turnSpd
        }
        break;
    }
}
