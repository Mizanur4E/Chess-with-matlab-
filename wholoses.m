function [loser] = wholoses(plr,box)
    loser=0; 
    for x=1:8
        for y=1:8
            if plr==1 && box(x,y)==10  
                loser=0;
                return;
                    elseif plr==2 && box(x,y)==-10 
                loser=0;
                return;
            else
                loser=plr;
            end
        end
    end
end