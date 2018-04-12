// Finding root of equation f(x)=x^3-5x+1
function [r]=root(xl,xu,et)
    // xl = Lower limit guess
    // xu = Upper limit guess
    // et = Error tolerance 
    xm = (xl+xu)/2
    p = poly([1,-5,0,1],'x','c')
    while %t
        y1 = horner(p,xl)
        y2 = horner(p,xm)
        if y1*y2 < 0 then
            xu = xm
        elseif y1*y2 > 0 then
            xl = xm
        else
            break
        end
        xmo = xm
        xm = (xl + xu)/2
        e = abs(xm - xmo)/xm * 100 
        if(e<et) then
            break
        end
    end
    r = xm
endfunction
