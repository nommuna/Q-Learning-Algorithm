%newState Fnc
function k = newState(s,a)
global N 
if (a == 1)
    k = s + N;
elseif (a == 2)
    k = s - N;
elseif (a == 3) 
    k = s - 1;
elseif (a == 4)
    k = s + 1;
else 
    k = s;
end
end

