 function [h] = playerturn(ha,h)
if (h.plr==1 && h.box(h.r,h.c)>0) || ...
   (h.plr==2 && h.box(h.r,h.c)<0)
        h.ipr=h.r;
        h.ipc=h.c;   
        rc=h.r*10+h.c;
        h.plrpiece=get(ha(rc),'CData');
        h.plrmark=whichpiece(h);
else 
    h.fpr=h.r;
    h.fpc=h.c;
  
    [check,h] = checkfp(ha,h);
    if check==1
        rc=h.ipr*10+h.ipc;
        if rem(h.ipr+h.ipc,2)==0
            set(ha(rc),'CData',h.white);
        elseif rem(h.ipr+h.ipc,2)~=0
            set(ha(rc),'CData',h.black);
        end
        rc=h.fpr*10+h.fpc;
        h.plrpiece=reqmark(h); 
        set(ha(rc),'CData',h.plrpiece);
        h.box(h.ipr,h.ipc)=0;
        h.box(h.fpr,h.fpc)=h.plrmark;
        if h.plr==1
            h.plr=2;
            set(ha(1),'CData',h.whiteking1);
        else
           h.plr=1;
           set(ha(1),'CData',h.blackking2);
        end
        h.ipr=0;
        h.ipc=0;
        loser=wholoses(h.plr,h.box);
        if loser~=0
            if loser==2
                msgbox('CHESS KING','Winner','custom',h.blackking2);
            elseif loser==1
                msgbox('CHESS KING','Winner','custom',h.whiteking1);
            elseif loser==-1
                msgbox('Its a Draw');
            end
            close(gcbf);
        end
    else
        msgbox('Wrong input','Error');
        h.ipr=0;
        h.ipc=0;
        h.fpr=0;
        h.fpc=0;
    end
end
end




































































































































































































































































































































































































