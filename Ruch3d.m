function [ x, y, xstat, ystat ] = Ruch3d(x, y, xstat, ystat, Vt, Y, m, F, dt, t )

    RR=randn.*sqrt(1);
    x(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    xstat(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    RR=randn.*sqrt(1);
    y(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    ystat(1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    z(1)=1;
    
for i=1:t
    RR=randn.*sqrt(1);
    x(i+1)=x(i)+((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    xstat(i+1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    RR=randn.*sqrt(1);
    y(i+1)=y(i)+((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    ystat(i+1)=((Vt*dt)/(1+(Y*dt)))+(((RR+F)*dt*dt)/(m*(1+(Y*dt))));
    z(i+1)=z(i)+1;
end
plot3(x,y,z,'r','LineWidth',2)
title('Wykres przesuniêcia cz¹stki w 3 wymiarach');
grid on
xlabel('Przesuniêcie po osi X','FontSize',8); 
ylabel('Przesuniêcie po osi Y','FontSize',8);
zlabel('Czas trwania symulacji','FontSize',8);
end

