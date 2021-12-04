clc;
g1=tf(10,[1 2 10]);
g2=tf([10 10],[1 10 10 10]);
g3=tf(10,[1 2 10 0]);
g4=tf([10 10],[1 10 10 10 0]);
subplot(1,2,1);
step(g1,'b',g2,'r');
legend('G1=10/s^2+2s+10','G2=10(s+1)/s^3+10s^2+10s+10');
subplot(1,2,2);
step(g3,'bo',g4,'r.');
legend('G1=10/s^2+2s+10','G2=10(s+1)/s^3+10s^2+10s+10');