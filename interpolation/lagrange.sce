function [pol]=lagrange(x0)
    x=list(1,1.2,1.3,1.5)
    y=list(1,1.0954,1.1402,1.2247)
    l=list()
    for i=1:4
        l(i)=1
        for j=1:4
            if(j~=i)
                l(i)=l(i)*(x0-x(j))/(x(i)-x(j))
            end
        end      
    end
    pol=0
    for i=1:4
        pol=pol+y(i)*l(i)
    end
endfunction
