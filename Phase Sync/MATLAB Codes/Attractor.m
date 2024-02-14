%% To plot the Rossler Attractor with the fixed point of system
% x0 = [1;1;0] initial point (should be a column vector)
% a = 0.1; b = 0.1; c = 4; values 
% FP is the fixed point of system
% x is the solution matrix return by the function Rossler()
% t is the time variable
%--------------------------------------------------------------------------
function Attractor(a,b,c,x0)
% v = 0.9:(1.15-0.9)/5:1.15;
% E = 0:(1-0)/5:1;
v=1; E=0.4;
n=300;
t_length=3024; % Maximum is 10240001
 [t,x] = Rossler(a,b,c,x0,v,E);     % the function Rossler() will solve the system
% disp(length(x(1,:)))
 Plotting(x,n,t_length) %Plot the 3D graph

% Dagger plot of phi vs time, Slope change
% angles=atan(x(2,n:t_length)./x(1,n:t_length));
% subplot(1,2,1), plot(angles)
% title("Phi versus Time")
% subplot(1,2,2), plot(diff(angles))
% title("Slope change")

%Omega(x,n,t_length) %Finding peaks and calculating Mean Rotation Frequency

% results = zeros(size(v));
% for ide = 1:length(E)
%     for idx = 1:length(v)
%         [t, x] = Rossler(a, b, c, x0, v(idx),E(ide));
%         result = Omega(x, n, t_length);
%         %results(idx) = result;disp(E(ide))
%         %disp(results)
%     end
%     
% end

% disp(results)
% disp(size(results))
% plot(v,v-results);
% %plot3(v,v-results,E)
% %disp(v),
end
