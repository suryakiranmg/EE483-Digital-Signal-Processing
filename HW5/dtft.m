
function y = dtft(x,omega)
 N=length(x);
 y=0;
 for i=1:N
     y=y+x(i)*exp(-j*omega*(i-1));
 end
end


