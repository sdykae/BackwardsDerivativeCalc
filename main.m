clear
clearvars
clearpoints
digits(256)
syms x

fn(x)=(x^3);
fn2 = @(x) (x^3);
hStep=10^-10;


% hStep=0.00000001;
%hStep=1.0000e-24
a = secondBackwardDifference(fn,11,hStep)
b = backwardDifference(fn,11,hStep,3)

% b = secondBackwardDifference(fn2,11,hStep);
% disp(a)
% disp(b)
% a = toBackwardDifferenceFunction(fn,hStep)
% a(2)

% function dfdx = toBackwardDifferenceFunction(f,innerHStep)
%     innerHStep = vpa(innerHStep);
%     dfdx = @(x) (f(x)-f(x-innerHStep))/(innerHStep);
% end


% secondBackwardDifference(fn,11,hStep);
% fna(x) = diff(fn,2);
% fna(2)
% class(fn)
% disp('answers')
% disp(a)
% disp(vpa(a))
% fprintf('%.64f',a)
% round(a,20)
% secondBackwardDifference(fn,11,hStep)
% fn2 = diff(fn(x));
% fn2(11);
% %d1fn=@(x) 3*x^2;
% %disp(d1fn(11));
% 
% 
% f=@(x)(x^2)
% xi = 3
% % dfdx = (f(xi)-f(xi-hStep));
% dfdx = (f(vpa(xi))-f(vpa(xi)-vpa(hStep)))/(vpa(hStep));
% syms x
% diff(f(x))
% disp(dfdx)
% 
% vpa(10^-64)+1