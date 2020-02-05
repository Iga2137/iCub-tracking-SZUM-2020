%% kó³ko
sterowanie = rospublisher('/turtle1/cmd_vel'); 
pozycja = rossubscriber('/turtle1/pose'); 
wiadomosc = rosmessage(sterowanie.MessageType); 

wiadomosc.Linear.X = 1; 

for t=0:0.1:10 
    
wiadomosc.Angular.Z = 1; 
send(sterowanie,wiadomosc);
pause(0.1);

end


%%  k¹t 0

sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');

while abs(theta) >= 0.001
     polozenie = receive(pozycja,1); 
     X = polozenie.X; 
     Y = polozenie.Y; 
     theta = polozenie.Theta; 
     v = 0;
     omega = -theta;
     wiadomosc.Linear.X = v;
     wiadomosc.Angular.Z = omega; 
     send(sterowanie,wiadomosc);
     pause(0.1);
end

%%  zadany punkt

sterowanie = rospublisher('/turtle1/cmd_vel');
pozycja = rossubscriber('/turtle1/pose');
wiadomosc = rosmessage(sterowanie.MessageType);
wiadomosc.Linear.X = 1;

odleglosc=2;

for t=0:0.1:odleglosc
    
     polozenie = receive(pozycja,1); 
     X = polozenie.X;
     Y = polozenie.Y;
     theta = polozenie.Theta;
     v=0.2;
     wiadomosc.Linear.X = v; 
     send(sterowanie,wiadomosc);
     pause(0.1);
     
end