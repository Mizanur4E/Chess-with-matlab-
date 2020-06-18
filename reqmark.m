function [plrpiece] = reqmark(h)
  plrpiece=h.plrpiece;
if rem(h.fpr+h.fpc,2)==0   
    if h.plrmark==-1
        plrpiece=h.whitepawn2;
    elseif h.plrmark==1
        plrpiece=h.blackpawn2;
    elseif h.plrmark==-2
        plrpiece=h.whiterook2;
    elseif h.plrmark==2
        plrpiece=h.blackrook2;
    elseif h.plrmark==-3
        plrpiece=h.whiteknight2;
    elseif h.plrmark==3
        plrpiece=h.blackknight2;
    elseif h.plrmark==-4
        plrpiece=h.whitebishop2;
    elseif h.plrmark==4
        plrpiece=h.blackbishop2;
    elseif h.plrmark==-5
        plrpiece=h.whitequeen2;
    elseif h.plrmark==5
        plrpiece=h.blackqueen2;
    elseif h.plrmark==-10
        plrpiece=h.whiteking2;
    elseif h.plrmark==10
        plrpiece=h.blackking2;
    end
elseif rem(h.fpr+h.fpc,2)~=0  
    if h.plrmark==-1
        plrpiece=h.whitepawn1;
    elseif h.plrmark==1
        plrpiece=h.blackpawn1;
    elseif h.plrmark==-2
        plrpiece=h.whiterook1;
    elseif h.plrmark==2
        plrpiece=h.blackrook1;
    elseif h.plrmark==-3
        plrpiece=h.whiteknight1;
    elseif h.plrmark==3
        plrpiece=h.blackknight1;
    elseif h.plrmark==-4
        plrpiece=h.whitebishop1;
    elseif h.plrmark==4
        plrpiece=h.blackbishop1;
    elseif h.plrmark==-5
        plrpiece=h.whitequeen1;
    elseif h.plrmark==5
        plrpiece=h.blackqueen1;
    elseif h.plrmark==-10
        plrpiece=h.whiteking1;
    elseif h.plrmark==10
        plrpiece=h.blackking1;
    end
else
    plrpiece=h.plrpiece;
end