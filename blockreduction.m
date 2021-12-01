%PES2UG19EC099
G1 = tf(1, [1 10]);
G2 = tf(1, [1 1]);
G3 = tf([1 0 1], [1 4 4]);
G4 = tf([1 1], [1 6]);
H1 = tf([1 1], [1 2]);
H2 = tf(2, 1);
H3 = tf(1, 1);
transferfunction1 = H2/G4;
transferfunction2 = series(G3, G4);
transferfunction3 = feedback(transferfunction2, H1, 1);
transferfunction4 = series(G2, transferfunction3);
transferfunction5 = feedback(transferfunction4, transferfunction1);
transferfunction6 = series(G1, transferfunction5);
overall_transferfunction = feedback(transferfunction6,1)