function LimitCycle(etax,lam,I,etay,tspan,y0)
dydt = @(t,x) [etax*(-x(1) + tanh(lam*x(1))-x(2)+I); etay*(-x(2)+tanh(lam*x(1)))];

[t, y] = ode45(dydt, tspan, y0);

figure;
plot(y(:, 1), y(:, 2));
end