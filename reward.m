%Setting the reward fnc
function r = reward(s)
global TARGET
if (s == TARGET)
    r = 1000;
else
    r = 0;
end
end
