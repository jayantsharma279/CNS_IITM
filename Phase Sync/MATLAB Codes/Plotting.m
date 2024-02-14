function result=Plotting(x,n,t_length)
    plot(x(1,n:t_length),x(2,n:t_length),'-r'); hold all
    xlabel('x(t)'); ylabel('y(t)'); zlabel('z(t)');
    grid on;
end
