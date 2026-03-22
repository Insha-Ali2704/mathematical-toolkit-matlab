clc;
ch=-1;
while ch~=0
    disp('======Welcome to Mathematical Toolkit!======');
    disp('1.Differential Equation Solver');
    disp('2.Function Plotter');
    disp('3.Mathematical Models');
    disp('4.Curve Fitting');
    disp('5.Matrix Operations');
    disp('0.Exit');
    ch=input('Enter your choice : ');
    switch ch
        case 1
            de_solver;
        case 2
            plot_functions;
        case 3
            models;
        case 4
            curve_fitting;
        case 5
            matrix_tool;
        case 6
            disp('Exiting toolkit...');
        otherwise
            disp('Invalid choice!');
    end
end
