function [e]= trap2(x0,xn,n)
    deff("y=f(x)","y=1/(1+x)")
    h=(xn-x0)/n
    s=0
    while x0<xn
        s=s+(h/2)*(f(x0)+f(x0+h))
        x0=x0+h
    end
    e=(abs(s-1.94)/1.94)*100
    disp(s)
endfunction
