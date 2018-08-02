h1 = [1/sqrt(2) 1/sqrt(2)];
h2 = [-1/sqrt(2) 1/sqrt(2)];
%freqz(h1)
a= 1/sqrt(2);
H_1 = [a a 0 0 0 0; 0 0 a a 0 0; 0 0 0 0 a a; a -a 0 0 0 0 ; 0 0 a -a 0 0; 0 0 0 0 a -a]
H_2 = transpose(H_1)
M = H_1 * H_2

    



