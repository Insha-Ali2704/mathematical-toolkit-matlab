function plot_functions()
    disp('======Plotting Graphs======');
    expression=input('Enter the expression in terms of x','s');
    expression = vectorize(expression);
    f=str2func(['@(x)' expression]);
    a=input('Enter starting value of x : ');
    b=input('Enter ending value of x : ');
    if a>=b
        disp('Make sure ending point is greater than staring point.');
        return;
    end
    try
        fplot(f,[a,b],'LineWidth',2);
        grid on;
        box on;
        title(['Graph of y= ',expression]);
        xlabel('x');
        ylabel('y');
    catch
        disp('Invalid expression! Enter valid expression.');
    end
end