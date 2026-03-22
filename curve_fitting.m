function curve_fitting()
    clc;
    disp('===== CURVE FITTING =====');
    disp('1. Linear Fit (y = mx + c)');
    disp('2. Polynomial Fit');
    disp('3. Exponential Fit');
    disp('0. Back');
    ch = input('Enter your choice: ');
    switch ch
        case 1
            x=input('Enter values of x as vector : ');
            y=input('Enter values of y as vector : ');
            p=polyfit(x,y,1); 
            %p=(slope,intercept)
            m=p(1); 
            c=p(2);
            fprintf('Best fit line : y = %.2f x + %.2f',m,c);
            % Plotting Graph
            figure(1)
            f=@(x) polyval(p,x);
            fplot(f,[min(x),max(x)],'LineWidth',2);
            title('Graph of Linear fit');
            xlabel('x');
            ylabel('y');
            hold on;
            plot(x,y,'o');
            hold off;
            grid on;
            box on;
       case 2
            x=input('Enter values of x as vector : ');
            y=input('Enter values of y as vector : ');
            n=input('Enter degree of polynomial : ');
            p=polyfit(x,y,n);
            % Plotting Graph
            figure(2)
            f=@(x) polyval(p,x);
            fplot(f,[min(x),max(x)],'LineWidth',2);
            title('Graph of Polynomial fit');
            xlabel('x');
            ylabel('y');
            hold on;
            plot(x, y, 'o');
            grid on;
            box on;
            hold off;
      case 3
            %y=ae^(bx)
            %ln y= lna + bx where Y=lny ,c=lna and m=b
            x=input('Enter values of x as vector : ');
            y=input('Enter values of y>0 as vector : ');
            Y=log(y);
            p=polyfit(x,Y,1);
            %polyfot returns p=(slope,intercept)
            b = p(1);
            a = exp(p(2));
            % Plotting Graph
            figure(3)
            f=@(x) a*exp(b*x);
            fplot(f,[min(x),max(x)],'LineWidth',2);
            title('Graph of Exponential fit');
            xlabel('x');
            ylabel('y');
            hold on;
            plot(x, y, 'o');
            grid on;
            box on;
            hold off;

            
    end
end