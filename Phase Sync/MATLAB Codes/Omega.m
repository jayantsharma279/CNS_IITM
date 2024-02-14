function result=Omega(x,n,t_length)
    time_series=x(1,n:t_length);
    axis=1:length(time_series);
    Time_steps=length(axis)*0.05; 
     TF = islocalmax(time_series);
     plot(axis,time_series,axis(TF),time_series(TF),'r*')
    pks = findpeaks(time_series);
    Nt=length(pks);  disp(Nt)    %Number of peaks observed
    Omega=2*pi*(Nt/Time_steps);
    result=Omega;
end