function [] = euler(x0,y0,h,xn)
    deff ("y = f(x,y)", "y =(y-x)/(y+x)")
    while %t
        disp([x0 y0])
        y1 = y0 + h * f(x0,y0)
        x0 = x0 + h
        y0 = y1
        if(x0 > xn) then
            break
        end     
    end
endfunction
