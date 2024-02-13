
x= 0;
y = 0;
lam = 3; %lamda
niters = 100; %no. of iterations
etax = 0.24; % 1/Taux
I = 0.2;
etay  = 0.24; % 1/Taus
varr = zeros(1,niters);

for i = 1:niters
    dx = etax*(-x + tanh(lam*x) + y + I); 
    V = tanh(lam*x);
    varr(i) = V; 
    x = x + dx;
    dy = etay*(-y - V);
    y = y + dy;
    
end

plot(varr) % V (oscillatory output)
figure(1)

tspan = [0, niters];
y0 = rand([2,1]); %initial point
LimitCycle(etax,lam,I,etay,tspan,y0); %Plot the Limit cycle attractor 
figure(2);