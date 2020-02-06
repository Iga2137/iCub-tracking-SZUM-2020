while(1) %pętla nieskończona
    
    fprintf(world,'d')
    fprintf(world,'world get box 1') %pobranie pozycji obiektu
    pause(0.1)
    while world.BytesAvailable>0
    fscanf(world)
    end

    p = ans;
    xyz = str2num(p);
    
    try
        alpha = atan2d(xyz(1),xyz(3)); %kąt prawo/lewo
        beta = atan2d(xyz(2)-1,xyz(3)); %kąt gora/dół
    catch
        alpha = 0;
        beta = 0;
    end
    
    cos1 = ['set pos 4 ' num2str(-alpha)]; %komenda oczu horyzontalnie
    cos2 = ['set pos 3 ' num2str(beta)]; %komenda oczu wertykalnie
    
    fprintf(eye,'d') %wyslanie komendy
    fprintf(eye,cos1)
    pause(0.1)
    while eye.BytesAvailable>0
    fscanf(eye)
    end
    
    fprintf(eye,'d')
    fprintf(eye,cos2)
    pause(0.1)
    while eye.BytesAvailable>0
    fscanf(eye)
    end

    
     
end
