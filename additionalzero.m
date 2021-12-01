clc;
a=tf([10/.1 10],[1 2 10]);
b=tf([10/1 10],[1 2 10]);
c=tf([10/10 10],[1 2 10]);
d=tf([10/100 10],[1 2 10]);
subplot(1,2,1);
step(a,b,c,d);
legend('a=0.1','a=1','a=10','a=100');
subplot(1,2,2);
pzmap(a,b,c,d);
legend('a=0.1','a=1','a=10','a=100');