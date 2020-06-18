function [check,h] = checkfp(ha,h)
    if (h.plrmark==1) && ((h.fpr==h.ipr+1) || (h.ipr==2 && h.fpr==4)) && ...
       (  (h.fpc==h.ipc && h.box(h.fpr,h.fpc)==0)  || ...  
          (h.fpc==h.ipc+1 && h.box(h.fpr,h.fpc)<0) || ...   
          (h.fpc==h.ipc-1 && h.box(h.fpr,h.fpc)<0)  )        
       check=1;
    elseif (h.plrmark==-1) && ((h.fpr==h.ipr-1) || (h.ipr==7 && h.fpr==5)) && ...
       (  (h.fpc==h.ipc && h.box(h.fpr,h.fpc)==0)  || ...
          (h.fpc==h.ipc+1 && h.box(h.fpr,h.fpc)>0) || ...     
          (h.fpc==h.ipc-1 && h.box(h.fpr,h.fpc)>0)  )
       check=1;

    elseif ( (h.plrmark==3 && h.box(h.fpr,h.fpc)<=0 ) || (h.plrmark==-3 && h.box(h.fpr,h.fpc)>=0)  ) && ...
        (   ( h.fpr==h.ipr+2 && h.fpc==h.ipc+1 ) || ...
            ( h.fpr==h.ipr+2 && h.fpc==h.ipc-1 ) || ...
            ( h.fpr==h.ipr-2 && h.fpc==h.ipc+1 ) || ...
            ( h.fpr==h.ipr-2 && h.fpc==h.ipc-1 ) || ...
            ( h.fpr==h.ipr+1 && h.fpc==h.ipc+2 ) || ...
            ( h.fpr==h.ipr+1 && h.fpc==h.ipc-2 ) || ...
            ( h.fpr==h.ipr-1 && h.fpc==h.ipc+2 ) || ...
            ( h.fpr==h.ipr-1 && h.fpc==h.ipc-2 )  )
        check=1;
    elseif ( h.plrmark==4 && h.box(h.fpr,h.fpc)<=0 || ...
           ( h.plrmark==-4 && h.box(h.fpr,h.fpc)>=0) )
        check=1;
       if (h.fpc-h.ipc)==(h.fpr-h.ipr) && h.fpc>h.ipc
                i=h.fpc-h.ipc-1;   
                while i>0   
                    if h.box(h.fpr-i,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.fpr-h.ipr) && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.ipr-h.fpr) && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;    
                while i>0   
                    if h.box(h.fpr-i,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.ipr-h.fpr) && h.fpc>h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
       else check=0;
       end
  
    elseif ( h.plrmark==2 && h.box(h.fpr,h.fpc)<=0 || ...
           ( h.plrmark==-2 && h.box(h.fpr,h.fpc)>=0) ) 
        check=1;
       if (h.fpc==h.ipc) && h.fpr>h.ipr
                i=h.fpr-h.ipr-1;    
                while i>0   
                    if h.box(h.fpr-i,h.fpc)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc==h.ipc) && h.fpr<h.ipr
                i=abs(h.fpr-h.ipr)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif h.fpr==h.ipr && h.fpc>h.ipc
                i=(h.fpc-h.ipc)-1;  
                while i>0   
                    if h.box(h.fpr,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif h.fpr==h.ipr && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        else check=0;
       end
    elseif ( h.plrmark==5 && h.box(h.fpr,h.fpc)<=0 || ...
           ( h.plrmark==-5 && h.box(h.fpr,h.fpc)>=0) ) 
        check=1;
       if (h.fpc==h.ipc) && h.fpr>h.ipr
                i=h.fpr-h.ipr-1;   
                while i>0   
                    if h.box(h.fpr-i,h.fpc)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc==h.ipc) && h.fpr<h.ipr
                i=abs(h.fpr-h.ipr)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif h.fpr==h.ipr && h.fpc>h.ipc
                i=(h.fpc-h.ipc)-1;   
                while i>0   
                    if h.box(h.fpr,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif h.fpr==h.ipr && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.fpr-h.ipr) && h.fpc>h.ipc
                i=h.fpc-h.ipc-1;    
                while i>0   
                    if h.box(h.fpr-i,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.fpr-h.ipr) && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.ipr-h.fpr) && h.fpc<h.ipc
                i=abs(h.fpc-h.ipc)-1;   
                while i>0   
                    if h.box(h.fpr-i,h.fpc+i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
        elseif (h.fpc-h.ipc)==(h.ipr-h.fpr) && h.fpc>h.ipc
                i=abs(h.fpc-h.ipc)-1;
                while i>0   
                    if h.box(h.fpr+i,h.fpc-i)~=0
                        check=0;
                        break
                    end
                    i=i-1;
                end
       else check=0;
       end
    elseif ( (h.plrmark==10 && h.box(h.fpr,h.fpc)<=0 ) || (h.plrmark==-10 && h.box(h.fpr,h.fpc)>=0)  ) && ...
         ( abs(h.fpr-h.ipr)==1 || abs(h.fpc-h.ipc)==1 ) 
        check=1;
    elseif h.plrmark==10 && h.box(1,8)==2 && h.box(1,7)==0 && h.box(1,6)==0 && h.fpr==1 && h.fpc==7
        check=1;
        h.box(1,6)=2;
        h.box(1,8)=0;
        set(ha(16),'CData',h.blackrook1);
        set(ha(18),'CData',h.black);
    elseif h.plrmark==-10 && h.box(8,8)==-2 && h.box(8,7)==0 && h.box(8,6)==0 && h.fpr==8 && h.fpc==7
        check=1;
        h.box(8,6)=-2;
        h.box(8,8)=0;
        set(ha(86),'CData',h.whiterook2);
        set(ha(88),'CData',h.white);
    else
        check=0;
    end
    if h.plrmark==1 && h.fpr==8 % for player 01
        h.plrmark=5;
    end
end