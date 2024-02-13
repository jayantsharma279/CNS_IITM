function w = calcgpewtsv2(n,rad,A, eps)

N = n*n; %Size of Matrix
w = zeros(N, N);


for i = 1:n
   for j = 1:n
      for ii = 1:n
         for jj = 1:n
            dis = (i-ii)*(i-ii) + (j-jj)*(j-jj);

            if(sqrt(dis) < rad )
               w((i-1)*n+j,(ii-1)*n + jj) = A*(eps - exp(-dis/(rad*rad))); % eps - a*exp(-dis/(rad*rad))
            end
            if(dis ==0)
                 w((i-1)*n+j,(ii-1)*n + jj) = 1; % 0?
            end
            
               
         end
      end
   end
end

% for i = 1:N,
%     s = sum(w(i,:));
%     if(abs(s) > 1)
%         w(i,:) = w(i,:)/(abs(s));
%     end
% end
