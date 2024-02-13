%sim stn gpe

n = 20; %GPe Layer Size
N = n*n; 
rad =5; %How closely are parameters spaced
eps_values = 0:0.1:0.6; %Epsilon/positive bias to Gaussian
niter = 600;
Agpe = 0;
A = 0.2; %Height of inverted Gaussian
DA=200;
APC_array=[];

 Vstn = rand(N,1); %Xstn or Output of STN Neuron
 Vgpe = rand(N,1); %UGPe or GPe neuron output
 Igpe = Agpe*rand(N,1); % External input to GPe neuron

 for eps = eps_values 
  wgpe = calcgpewtsv2(n,rad, A, eps); %Calculating GPe weights   
 [Vstn, Vgpe, APC_array] = stn_gpe(Vstn, Vgpe, wgpe, Igpe, niter,DA,APC_array);
 end


%Plotting APC vs Epsilon
plot(eps_values, APC_array, 'b'); 
hold on;

DA=50; %Parameters 
% Agpe=0;
% rad=4.2;
% A = 0.7;
APC_array=[];
 for eps = eps_values 
  wgpe = calcgpewtsv2(n,rad, A, eps); %Calculating GPe weights   
 [Vstn, Vgpe, APC_array] = stn_gpe(Vstn, Vgpe, wgpe, Igpe, niter,DA,APC_array);
 
 end

plot(eps_values,APC_array, 'r')
xlabel('Epsilon');
ylabel('APC');
title('Comparison of DA50 and DA200');
legend('DA=200','DA=50');


%plotting Vgpe and Vstn (instantaneous)
%  figure(1)
%  subplot(1,2,1)
%  plot(Vstn)
%  subplot(1,2,2)
%  plot(Vgpe)
