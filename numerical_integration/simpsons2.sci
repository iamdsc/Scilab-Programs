function [e] = sim2(x0,xn,n)
    deff("y=f(x)","y=1/(x+1)")
    h=(xn-x0)/n
    s=0
    while x0<xn
        s=s+(h/3)*(f(x0)+4*f(x0+h)+f(x0+2*h))
        x0=x0+2*h
    end
    e=(abs(s-1.94)/1.94)*100
    disp(s)
endfunction
