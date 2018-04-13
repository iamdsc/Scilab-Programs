function[x,Vm,Vc]=pam(Em,fm)
    t = (0:0.1:12*%pi)';
    Vm = 2*Em*sin(2*%pi*fm*t);
    Vc =1+squarewave(4*t);
    x = Vc.*Vm
    subplot(3,1,1)
    square(0,0,16,2.5)
    plot(Vm)
    title('Modulating Signal')
    subplot(3,1,2)
    square(0,0,16,2.5)
    plot(Vc)
    title('Pulse Train')
    subplot(3,1,3)
    square(0,0,16,2.5)
    plot(x);
    title('PAM Signal')
endfunction       

   
