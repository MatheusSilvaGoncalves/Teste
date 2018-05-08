clear
clc
close all
m = 50;
resultado = zeros(m,1);
tamanho = resultado;
for k = 1:m
n = k;
coisa = zeros(n,1);
tamanho(k) = k;
a = 5;
F = 0;
for i = 1:n
    prod = 1;
    for j = 1:i
        prod = prod*(2*j-1);
    end
    coisa(i) = (a^(2*i-1))*exp(-(a^2)/2)/sqrt(2*pi)/prod;
    F = F + (a^(2*i-1))/prod;
end
F = F*exp(-(a^2)/2)/sqrt(2*pi);
resultado(k) = F+0.5;
end
certo = cdf('normal',a,0,1);
plot(tamanho,certo*ones(m,1),'r','linewidth',2)
hold on
plot(tamanho,resultado,'k','linewidth',2)