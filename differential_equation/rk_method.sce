function [] = rk(x0, y0, xn, h)
    deff("y=f(x,y)","y = x+y")
    while %t
        k1 = h*f(x0, y0)
        k2 = h*f(x0+h/2, y0+k1/2)
        k3 = h*f(x0+h/2, y0+k2/2)
        k4 = h*f(x0+h, y0+k3)
        k = (k1 + 2*k2 + 2*k3 + k4)/6
        y1 = y0 + k
        disp([x0 y0])
        x0 = x0+h
        y0 = y1
        if(x0>xn) then
            break
        end
    end
endfunction
