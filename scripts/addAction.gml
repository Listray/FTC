var s = o_AutoCtrl;
if(s.m_curAction != s.MAX_ACTIONS)
{
    s.m_actions[s.m_curAction] = o_Action.m_buttonText;
    s.m_directions[s.m_curAction] = o_Direction.m_buttonText;
    s.m_time[s.m_curAction] = o_Amount.m_amount * room_speed;
    s.m_curAction++;
}

