clc;
a=tf(1,[1 0.5]);
b=tf(1,[1 1]);
c=tf(1,[1 2]);
d=tf(1,[1 10]);
subplot(1,2,1);
step(a,b,c,d);
legend('p=0.5','p=1','p=2','p=10');
subplot(1,2,2);
pzmap(a,b,c,d);
legend('p=0.5','p=1','p=2','p=10');
grid on;
