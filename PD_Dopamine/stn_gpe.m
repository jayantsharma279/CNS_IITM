function [Vstn, Vgpe, APC_array] = stn_gpe(Vstn, Vgpe, wgpe, Igpe, niter,DA,APC_array)


[M,N] = size(wgpe);

u = zeros(N,1); %20*1 matrix empty
% Vstn = zeros(N,1);
% Vgpe = zeros(N,1);

lamg=10; 
tau=0.24*0.1; %Time constant* dt


eta = 0.1; % 1/taug
lam = 2;
gamma = 1.0;
etas = eta/2; %1/taus
plotflag = 1;
ws2g = (rand(N,1)+2)/3;

solutionMatrix = zeros(N, niter);
Ida=0.1;
for j = 1:niter
   for k = 1:N    
       %Ustn=Vgpe;

       %Ida=dopamine_feedback(Ustn,DA,N);  
                         %-Xgpe + lat weights GPe*Ugpe  + Xstn   + Igpe    + Dopamine
       u(k) = u(k) + eta*(-u(k) + sum(wgpe(k,:).*Vgpe') + Vstn(k)+ Igpe(k) +Ida/150);

       Vgpe(k) = tanh(lam*u(k));
       Vstn(k) = Vstn(k) + etas*(-Vstn(k) - Vgpe(k));
       
   end
    aunits=0.5*sum(Vstn+1); %number of active units
    e= DA - aunits;
    dE_dt = tau * tanh(lamg * e);
    e = e + 1* dE_dt;
    Ida= e - N/2;
solutionMatrix(:, j) = Vgpe;

% if(plotflag)
%     n = sqrt(N);
%     figure(1)
%     colormap('gray')
%     tmp = reshape(Vgpe, n,n);
%     subplot(2,1,1),imagesc(tmp)
%     title('Output of GPe neuron')
%     tmp = reshape(Vstn,n,n);
%     subplot(2,1,2), imagesc(tmp)
%     title('Output of STN neuron')
%     %pause(0.1)
% end
% 
%     if(mod(j,200)==0)
%         fprintf('Iter = %d\n', j)
%     end
 
end

APC_array=APCorr(solutionMatrix,APC_array); %Average pairwise correlation

