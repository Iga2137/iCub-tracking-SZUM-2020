world = tcpip('82.145.77.104', 10002, 'NetworkRole', 'client');
fopen(world)
data='CONNECT human \nd\n set pos 0 0 \n';
fprintf(world,data)

eye = tcpip('82.145.77.104', 10032, 'NetworkRole', 'client');
fopen(eye)
data2='CONNECT human \nd\n set pos 0 0 \n';
fprintf(eye,data2)