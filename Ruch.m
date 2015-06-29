function [ R, Rstat ] = Ruch( R, Rstat, Vt, Y, m, F, dt, t )
    RR=randn.*sqrt(1);
    R(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+Y*dt)));
    Rstat(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+Y*dt)));
for i=1:t
    RR=randn.*sqrt(1);
    R(i+1)=R(i)+((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+Y*dt)));
    Rstat(i+1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+Y*dt)));
end
plot(R,'g','LineWidth',2)
title('Wykres przesuniêcia do czasu');
grid on
xlabel('Czas trwania symulacji','FontSize',8);
ylabel('Przesuniêcie po osi X','FontSize',8); 
end

