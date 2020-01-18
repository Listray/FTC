alarm[0]--;

if(alarm[0] == 0)
{
    m_state++;
    alarm[0] = 3 * room_speed;
}

