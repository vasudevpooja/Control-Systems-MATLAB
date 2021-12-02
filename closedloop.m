clc;
s = tf('s');
%G block for different p values
Ga = 1/(s^2+s);
Gb = 1/(s^2+2*s); 
Gc = 1/(s^2+5*s);
%G1 block
G1_i = 11*s + 20; %K=20
G1_ii = 11*s + 100; %K =100
%Transfer function when D(S)=0 | K= 20 for different p values
G_i_a = feedback(G1_i*Ga,1);
G_i_b = feedback(G1_i*Gb,1);
G_i_c = feedback(G1_i*Gc,1);
%Transfer function when D(S)=0 | K= 100 for different p values
G_ii_a = feedback(G1_ii*Ga,1);
G_ii_b = feedback(G1_ii*Gb,1);
G_ii_c = feedback(G1_ii*Gc,1);
figure(1);
%Impulse responses
subplot(2,2,1);
impulse(G_i_a,G_i_b,G_i_c);
legend('p=1','p=2','p=5');
title('Impulse Response | K = 20');
subplot(2,2,3);
impulse(G_ii_a,G_ii_b,G_ii_c);
legend('p=1','p=2','p=5');
title('Impulse Response | K = 100');
%Step Responses
subplot(2,2,2);
step(G_i_a,G_i_b,G_i_c);
legend('p=1','p=2','p=5');
title('Step Response | K = 20');
subplot(2,2,4);
step(G_ii_a,G_ii_b,G_ii_c);
legend('p=1','p=2','p=5');
title('Step Response | K = 100');
figure(2);
%Disturbance input
t = 0:0.1:8;
d_a = ones(size(0:0.1:4));
d_b = 2*ones(size(4.1:0.1:8));
d = [d_a d_b];
Yd_i=lsim(Ga,d,t);%disturbance effect p =1
Yd_ii=lsim(Gb,d,t);%disturbance effect K =5
Yd_iii=lsim(Gc,d,t);%disturbance effect K =10
%K = 20
Y1_i_a= step(G_i_a,t);
Y1_i_b= step(G_i_b,t);
Y1_i_c= step(G_i_c,t);
Y_i_a = Y1_i_a + Yd_i;
Y_i_b = Y1_i_b + Yd_ii;
Y_i_c = Y1_i_c + Yd_iii;
Si_a = stepinfo(Y_i_a,t);
Si_b = stepinfo(Y_i_b,t);
Si_c = stepinfo(Y_i_c,t);
disp(Si_a); 
disp(Si_b);
disp(Si_c);
subplot(2,1,1);
plot(t,Y_i_a);
hold on;
plot(t,Y_i_b);
hold on;
plot(t,Y_i_c);
hold off;
title('Step Response with Disturbance input | K = 20');
legend('p=1','p=2','p=5');
%K = 100 
Y1_ii_a= step(G_ii_a,t);
Y1_ii_b= step(G_ii_b,t);
Y1_ii_c= step(G_ii_c,t);
Y_ii_a = Y1_ii_a + Yd_i;
Y_ii_b = Y1_ii_b + Yd_ii;
Y_ii_c = Y1_ii_c + Yd_iii;
Sii_a = stepinfo(Y_ii_a,t);
Sii_b = stepinfo(Y_ii_b,t);
Sii_c = stepinfo(Y_ii_c,t);
disp(Sii_a); 
disp(Sii_b);
disp(Sii_c);
subplot(2,1,2);
plot(t,Y_ii_a);
hold on;
plot(t,Y_ii_b);
hold on;
plot(t,Y_ii_c);
hold off;
title('Step Response with Disturbance input | K = 100');
legend('p=1','p=2','p=5');
