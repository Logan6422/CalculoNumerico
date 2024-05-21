function [L,U,P] = doolittle_P_orig(U)
n = length(U(:,1));
L = zeros(n,n);
P = eye(n,n);
%U = zeros(n,n);

for i=1:n
    [val,k] = max(abs(U(i:n,i)))
    k = k(1) + i-1
    %pause
    U([i,k],:) =  U([k,i],:);
    P([i,k],:) =  P([k,i],:); % permutacion de filas
    L([i,k],:) =  L([k,i],:);
    L(i+1:n,i) =  U(i+1:n,i)/U(i,i);
    U(i+1:n,i:n) = U(i+1:n,i:n) - L(i+1:n,i)*U(i,i:n);
    %pause
end
L = L + eye(n,n);
end