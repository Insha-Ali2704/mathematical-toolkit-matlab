function de_solver()
    disp('======Differential Equations======');
    disp('1.Exponential growth (dy/dx=ky)');
    disp('2.Decay (dy/dx=-ky)');
    disp('3.Oscillation (y''+y=0)');
    ch=input('Enter your choice : ');
    switch ch
        case 1
            k=input('Enter value of k : ');
            y0=input('Enter initial value i.e y(0) : ');
            tspan=input('Enter time range [t0 t1]: ');
            f= @(t,y) k*y; %Define DE
            [t,y]=ode45(f,tspan,y0); %solving DE
            % Printing final solution
            fprintf("The equation is y=%.2f*e^(%.2f t)\n",y0,k);
            fprintf("Final value at t=%.2f is %.4f\n",t(end),y(end));
            % Plotting Graph
            figure(1)
            plot(t,y)
            title('Exponential Growth')
            xlabel('Time')
            ylabel('y (Growth)')
            grid on
        case 2
            k=input('Enter value of k : ');
            y0=input('Enter initial value i.e y(0) : ');
            tspan=input('Enter time range [t0 t1]: ');
            f= @(t,y) -k*y; %Define DE
            [t,y]=ode45(f,tspan,y0); %solving DE
            % Printing final solution
            fprintf("The equation is y=%.2f*e^(-%.2f t)\n",y0,k);
            fprintf("Final value at t=%.2f is %.4f\n",t(end),y(end));
            % Plotting Graph
            figure(2)
            plot(t,y)
            title('Exponential Decay')
            xlabel('Time')
            ylabel('y (Decay)')
            grid on
        case 3
            % y'' + y = 0
            % y1 = y and y2 = y'
            % y2 = y1' and y1 = -y''
            y0=input('Enter intial value i.e y(0)  : ');
            v0=input('Enter initial value i.e y''(0) : ');
            tspan=input('Enter time range [t0 t1]: ');
            f=@(t,y) [y(2);-y(1)];
            [t,y]=ode45(f,tspan,[y0 v0]);
            fprintf("The equation is y'' + y = 0\n");
            fprintf("Final value at t=%.2f is %.4f\n",t(end),y(end,1));
            % Plotting Graph
            figure(3)
            plot(t,y(:,1),'b',t,y(:,2),'r')
            legend('Displacement','Velocity')
            title('Simple Harmonic Motion')
            xlabel('Time')
            ylabel('Amplitude')
            grid on

    end
end