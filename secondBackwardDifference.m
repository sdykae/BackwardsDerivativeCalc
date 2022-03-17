function dfdx = secondBackwardDifference(f,xi,hStep)
    arguments
        f (:,:);
        xi (:,:);
        hStep (:,:);
    end
    if ~(isa(f,'function_handle') || isa(f,'symfun'))
      error('Argument must be a function handle.');
    end
    xi = vpa(xi);
    hStep = vpa(hStep);
    dfdx = (firstBackwardDifference(f,xi,hStep)-firstBackwardDifference(f,xi-hStep,hStep))/(hStep);
end