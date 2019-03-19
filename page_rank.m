function Vector = page_rank(Q,W)
%This function computes the pagerank vector associated to the eigenvalue 1


 Q = [0.6,0.3,0.2,0.1,0.5;
      0.2,0.3,0.1,0.4,0.3;
      0.1,0.2,0.4,0.5,0.1;
      0.1,0.1,0.1, 0, 0.1;
      0,  0.1,0.2, 0, 0];       %markov matrix

W = [1/5, 1/5, 1/5, 1/5, 1/5]'; %personalization vector

error = 0.8e-4; %minimum error so algorithm stop and get iteration

for i = 1:500 % i is no of iterations desired
    QiW = (Q^i)*W;
    P(:,i) = QiW;
    if i>1
        if ((P(:,i) - P(:,i-1)) < error)
            disp('The eigen vector is :');
            disp(P(:,i-1));
            disp('no. of iterations');
            disp(i-1);
            return
        end
    end

end

end