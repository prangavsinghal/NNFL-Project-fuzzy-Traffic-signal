function f = imagedifper(ref,curr)
    ref = rgb2gray(ref);
    curr = rgb2gray(curr);
    refedge = edge(ref,'Prewitt', [], 'both', 'nothinning');
    curredge = edge(curr,'Prewitt', [], 'both', 'nothinning');
    f = (1-(sum( abs(refedge(:)-curredge(:)) > eps ) / numel(refedge)))*100;
end
