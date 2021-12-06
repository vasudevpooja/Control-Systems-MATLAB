%PES2UG19EC099
choice = input('Enter 1 for Cascade; \nEnter 2 for Parallel; \nEnter 3 for Feedback: ');
polyn1 = input('1st Polynomial, \nEnter Numerator coefficients: ');
polyd1 = input('Enter Denominator coefficients: ');
polyn2 = input('2nd Polynomial, \nEnter Numerator coefficients: ');
polyd2 = input('Enter Denominator coefficients:');
transferfunction1 = tf(polyn1, polyd1);
transferfunction2 = tf(polyn2, polyd2);

if choice==1
	disp('Cascade:');
	Cascade_Output=series(transferfunction1, transferfunction2)
elseif choice==2
	disp('Parallel:');
	Parallel_Output=parallel(transferfunction1, transferfunction2)
elseif choice==3
	disp('Feedback:');
	Feedback_Output=feedback(transferfunction1, transferfunction2)
end