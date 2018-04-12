// Find root of the equation f(x)=x^5-7 using xi=2 and et=5 
function [r]=root(xi)
    // xi = initial guess of root
    while %t
        y = xi^5-7
        y1 = 5*xi^4
        x = xi - y/y1
        e = abs(x-xi)/x * 100 
        if(e<5) then
            break
        end
        xi = x
    end
    r = x    
endfunction
