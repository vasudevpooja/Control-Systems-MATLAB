a=tf(10,[1 0.1 10]);
b=tf(10,[1 2.5 10]);
c=tf(10,[1 5 10]);
d=tf(10,[1 7.5 10]);
e=tf(10,[1 10 10]);
subplot(2,3,1);
stepplot(a);
title('a=0.1');
subplot(2,3,2);
stepplot(b);
title('a=2.5');
subplot(2,3,3);
stepplot(c);
title('a=5');
subplot(2,3,4);
stepplot(d);
title('a=7.5');
subplot(2,3,5);
stepplot(e);
title('a=10');
subplot(2,3,6);
pzmap(a,b,c,d,e);
legend('p=0.1','p=2.5','p=5','p=7.5','p=10');
grid on;