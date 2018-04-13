function [w]= psk(data,fc,Ac)
    //Ac-carrier signal amplitude in volts
    //fc-carrier signal frequency in Hz
    //x- signal generated for binary 1
    //y-signal generated for binary 0
    //data - digital information signal
    //w-BPSK modulated signal
    t = 0:0.001:1;
    x = Ac*sin(2*%pi*fc*t);
    y = Ac*sin(2*%pi*fc*t+%pi);
    z = data;
    w =[];
    for i = 1:length(data)
        if(z(i)==1) then
            w = [w,x];
        else
            w = [w,y];
        end
    end
    plot(w)
    title('Phase Shift Keying Modulated Signal')
endfunction

