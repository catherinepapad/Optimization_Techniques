function [k] = postive_definite_matrix(A)
    [n,m] = size(A);
    
    if(n~=m)
        k = false;
        disp("Matrix is not square.")
    else
        k = true;
        for i=1:1:n
            B = A(1:i,1:i);
            if(det(B)<=0)
                k = false;
                break
            end
        end
    end 
 

end
