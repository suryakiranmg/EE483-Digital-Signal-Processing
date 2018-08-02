function y = dft(x)
 N=length(x);
 y=[];
 for k =0:N-1
     y(end+1)=sum(x.*exp(-j*(2*pi*k/N)*reshape([0:N-1],size(x))));
 end