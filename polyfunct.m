function [ f_opt ] = polyfunct( w, x )

f_opt = zeros(size(x));
for j = 1 : length(x)
    for i = 1 : length(w)
       f_opt(j) =  f_opt(j) + w(i) * x(j)^(i-1); 
    end
end

end

