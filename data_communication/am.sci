function[x,Vm,Vc]=amp_mod(Ec,Em,fm,fc,fs)
    //Ec -carrier amplitude in volts
    //Em - message signal amplitude in volts
    //fm - modulating signal frequency Hz
    //fc - carrier signal frequency in Hz
    //fs - sampling frequency in samples/sec
    t = 0:1/fs:1;
    Vm = Em*sin(2*%pi*fm*t);
    Vc = Ec*sin(2*%pi*fc*t);
    x = (Ec+Vm).*(sin(2*%pi*fc*t));
    subplot(3,1,1)
    plot(Vm)
    title('Modulating Signal')
    subplot(3,1,2)
    plot(Vc)
    title('Carrier Signal')
    subplot(3,1,3)
    plot(x);
    title('Amplitude Modulated Signal')
endfunction

