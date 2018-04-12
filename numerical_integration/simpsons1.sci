function [e] = sim1(x0,xn,n)
    deff("y=f(x)","y=sqrt(x^2+1)")
    h=(xn-x0)/n
    s=0
    while x0<xn
        s=s+(h/3)*(f(x0)+4*f(x0+h)+f(x0+2*h))
        x0=x0+2*h
    end
    e=(abs(s-1.147)/1.147)*100
    disp(s)
endfunction
