clear all;
close all;
%wykres
[x1, x2] = meshgrid(-5:0.01:5);
%f = (2*x1.^2 - 2*x1.*x2 + x2.^2);
f = ((x1.^2+x2-11).^2+(x1+x2.^2-7).^2-200);
figure(1)
contour(x1,x2,f,80);
grid on
%funkcja
x0 = [3 2];
%funkcja = @(x1)2*x1(1)^2 - 2*x1(1)*x1(2) + x1(2)^2;
funkcja = @(x1)(x1(1)^2+x1(2)-11)^2+(x1(1)+x1(2)^2-7)^2-200;
options=optimset('LargeScale','off','Display','iter','TolX',10e-8,'TolFun',10e-8,'PlotFcns',@optimplotfval);

[x,fval,exitflag,output,grad,hessian] = fminunc(funkcja,x0,options) 