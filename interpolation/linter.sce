// Finding value of f(x) given (x0,y0) and (x1,y1)
function [y] = linear_interpolation(x0,y0,x1,y1,x)
    b0 = y0
    b1 = (y1 - y0)/(x1 - x0)
    y = b0 + b1*(x - x0)
endfunction
