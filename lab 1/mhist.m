function [h, bins]=myhist(v, N)
    vm = min(v);
    vM = max(v);
    w = (vM - vm)/N;
    h = zeros(1, N);
    for i=1:N
        dummy = find((v >= vm+(i-1)*w) & (v<vm+i*w));
        h(i) = sum(dummy);
    end
    bins = vm+w/2:w:vM;
end