clc;
clear all;


s=serial('COM9');
fopen(s); 
n=0;
fs=200;
x=zeros(1,fs);
a=true;
tic;

while a 
    c = str2double(fgetl(s));
    n=n+1;
    x(1,n)=c;
   t=toc;
    if t>60
       a=false;
    end

end
fclose(instrfind);

plot(x)

