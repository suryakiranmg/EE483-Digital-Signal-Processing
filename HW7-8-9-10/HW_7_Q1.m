clc; clear all;
figure(1);zplane([0 5],[1 -(22/3) (7/3)]);
figure(2);[z,p,k]=tf2zp([1 0],[1 0 5]);zplane(z,p);
figure(3);[z,p,k]=tf2zp([1 0],[1 2 2]);zplane(z,p);
figure(4);[z,p,k]=tf2zp([1],[1 -2 1]);zplane(z,p);
figure(5);z = [-5; -4; -2]; p= [0; 0; 2; 4]; zplane(z,p)