%actionTaken Fnc
function a = actionTaken(s)
global N TARGET UP RIGHT LEFT DOWN
if(s == TARGET)
    a = 0;
elseif (s > N * N)
        a = -1;
        
%Bottem left
elseif (s == 1)
   switch ceil(rand()* 2)
       case 1
           a = RIGHT;
       case 2 
           a = UP;
   end

%Bottom Right
elseif (s == N)
   switch ceil(rand()* 2)
        case 1
            a = UP;
        case 2 
            a = LEFT;
   end

%Top left
elseif (s == (N*N)-N+1)
   switch ceil(rand()* 2)
       case 1
           a = RIGHT;
       case 2 
           a = DOWN;
   end

%top right
elseif (s == N*N)
   switch ceil(rand()* 2)
       case 1
           a = DOWN;
       case 2 
           a = LEFT;
   end
   
%bottom row 
elseif (s > 1 && s < N)
    switch ceil(rand()* 3)
        case 1
            a = UP;
        case 2
            a = LEFT;
        case 3
            a = RIGHT;
    end
 
% left side
elseif (mod(s,N) == 1)
    if (s ~= (N*N)-N+1 || s~= 1)
        switch ceil(rand()* 3)
            case 1
                a = RIGHT;
            case 2 
                a = UP;
            case 3
                a = DOWN;
        end
    end
    
 %top side
elseif (s > (N*N)-N+1 && s < N*N)
    switch ceil(rand()* 3)
        case 1
            a = DOWN;
        case 2
            a = LEFT;
        case 3
            a = RIGHT;
    end 
%right side 
elseif (mod(s,N) == 0)
    if (s ~= N*N || s ~= N)
        switch ceil(rand()* 3)
            case 1
                a = LEFT;
            case 2 
                a = UP;
            case 3
                a = DOWN;
        end
    end
    
%4 options per state
else 
    switch ceil(rand()* 4)
        case 1
            a = LEFT;
        case 2
            a = UP;
        case 3 
            a = DOWN;
        case 4 
            a = RIGHT;
    end  
end
end



