%Munachiso Ogbuchiekwe
%CSE 516
%Main Script
global learnRate discountRate N TARGET INITIALSTATE UP DOWN LEFT RIGHT
UP = 1;
DOWN = 2;
LEFT = 3;
RIGHT = 4;
N = input('Enter matrix size: ');
learnRate = input('Enter learning rate: ');
discountRate = input('Enter discount rate: ');
TARGET = randperm(N^2,1);
INITIALSTATE = 1;
Q = zeros(N^2,4);
V = zeros(N^2,1);
P = zeros(N^2,1);
for n = 1:100
    s = INITIALSTATE;
    while(s ~= TARGET)
        a = actionTaken(s);
        snew = newState(s,a);
        r = reward(snew);
        %Calculate Qnew and Q(s,a)
        qnew = r + discountRate * V(snew);
        Q(s,a) = (1 - learnRate) * Q(s,a) + (learnRate * qnew);
        %Compare the Q(s,a) with V(s)and update V(s) and policy 
        if (Q(s,a) > V(s) || V(s) == 0)
            P(s) = a;
            V(s) = Q(s,a);
        end
        s = snew;
    end
end



