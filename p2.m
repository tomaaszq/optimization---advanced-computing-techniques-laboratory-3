clear all;
close all;
%wykres
[x1, x2] = meshgrid(-5:0.01:5,-5:0.01:5);
%f = (4*x1.^2-2.1*x1.^4+(1/3)*x1.^6+x1.*x2-4*x2.^2+4*x2.^4);
f = (2*x1.^2+4*x1.*x2.^3-10*x1.*x2);
figure(1)
contour(x1,x2,f,80);
grid on
%funkcja
x0 = [0.1 0.1];
%funkcja = @(x1)4*x1(1)^2-2.1*x1(1)^4+(1/3)*x1(1)^6+x1(1)*x1(2)-4*x1(2)^2+4*x1(2)^4;
funkcja = @(x1)2*x1(1)^2+4*x1(1)*x1(2)^3-10*x1(1)*x1(2);
options=optimset('LargeScale','off','Display','iter','TolX',10e-8,'PlotFcns',@optimplotfval);

[x,fval,exitflag,output,grad,hessian] = fminunc(funkcja,x0,options) 