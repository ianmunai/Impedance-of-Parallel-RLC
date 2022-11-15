clear
clc
close all

% Impedance of a parallel RLC CIRCUIT for various frequencies and Capacitor values 

% Frequencies
x=[10000 20000 30000 40000 50000 60000 70000 80000 90000 100000 110000]; 
n=length(x);
R=1000;
L=4.7e-3;
%voltage
v=[.1 .2 .4 .5 .6 .7 .9 1.0 1.2 1.4 1.5];

for i=1:n
    c=6.8e-9;
    f(i)=x(i);
    w(i,:)=2*pi*f(i);
    
    xL=1i*w(i)*L;
    xC=1/(1i*w(i)*c);
    
    Z(i,:)=1/((1/R ) + (1/xL) + (1/xC));
end

disp(abs(Z))

figure;
plot(f,abs(Z))
grid on
title('Graph of Impedance,Z against Frequency')
xlabel('Frequency,f(hz)'); ylabel('Impedance,Z')


% ---------------------(c)Munai--------------------------








