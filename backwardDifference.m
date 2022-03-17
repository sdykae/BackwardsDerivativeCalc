function dfdx = backwardDifference(f,xi,hStep,n)
    arguments
        f (:,:);
        xi (:,:);
        hStep (:,:);
        n (1,:);
    end
%     if ~(isa(f,'function_handle') || isa(f,'symfun') || isa(f,'double'))
%       error('Argument must be a function handle.');
%     end
    xi = vpa(xi);
    hStep = vpa(hStep);
    if(n==0)
        %dfdx = f;
        dfdx = f(xi);
        return;
    else
%         dfdxTemp = @(x) ((f(xi)-f(xi-hStep))/(hStep));
        fn = backwardDifference(toBackwardDifferenceFunction(f,hStep),xi,hStep,n-1);
        dfdx = fn;
        return;
    end
    function dfdx = toBackwardDifferenceFunction(f,innerHStep)
        innerHStep = vpa(innerHStep);
        dfdx = @(x) (f(x)-f(x-innerHStep))/(innerHStep);
    end

end
