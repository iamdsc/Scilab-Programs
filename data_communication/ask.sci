function [w] = ask(data,fc,Ac)
    //fc - Carrier signal frequency in Hz
    //Ac - carrier signal amplitude in volts
    //w - ASK modulated signal
    //data- digital information signal
    t = [0:0.001:1];
    x = Ac*sin(2*%pi*fc*t);//Analog carrier signal
    y = 0*t;
    z = data;
    w = [];
    for i = 1:length(data)
        if(z(i)==1) then
            w = [w,x];
        else
            w = [w,y];
        end
    end
    plot(w)
    title("Amplitude Shift Keying Modulated Signal")
    xgrid(1)
endfunction

