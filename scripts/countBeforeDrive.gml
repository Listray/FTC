alarm[0]--;

if(alarm[0] == 0) {
    //  replace bot with robot
    x = 0;
    y = room_width;
    var delBot = instance_nearest(x, y, o_Bot);
    var playerX = delBot.x;
    var playerY = delBot.y;
    with(delBot) { instance_destroy() };
    instance_create(playerX, playerY, o_Robot);
    
    //  inc state
    m_state++;
    alarm[0] = 1.5 * 60 * room_speed;
}
