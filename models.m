function models()
    clc;
    disp('====== MATHEMATICAL MODELS ======');
    disp('1. Compound Interest');
    disp('2. Epidemic Model');
    disp('3. Cooling Model');
    disp('4. Logistic Growth');
    disp('5. Exponential Growth');
    disp('0. Back');
    ch=input('Enter your choice : ');
    switch ch
        case 1
            p=input('Enter principal amount : ');
            r=input('Enter rate : ');
            t=input('Enter time period (in months) : ');
            final=p*exp(r*t);
            fprintf('Final amount after %.2f months is : \n',t);
            disp(final);
        case 2
            i0=input('Enter initial infected : ');
            k=input('Enter speed rate : ');
            t=input('Enter time period : ');
            i=i0*exp(k*t);
            fprintf("Number of infected people in time period of %.2f time units : \n",t);
            disp(i);
         case 3
            T0=input('Enter initial temperature : ');
            Ts=input('Enter surrounding temperature : ');
            k=input('Enter cooling constant : ');
            t=input('Enter time : ');
            T=Ts+((T0-Ts)*exp(-k*t));
            fprintf("Temperature after %.2f time units is : \n",t);
            disp(T);
          case 4
            P0=input('Enter initial population : ');
            K=input('Enter carrying capacity : ');
            r=input('Enter growth rate : ');
            t=input('Enter time : ');
            P=(K*P0)/(P0+((K-P0)*exp(-r*t)));
            fprintf("Population after %.2f time units is : \n",t);
            disp(P);
          case 5
            P0=input('Enter initial value : ');
            r=input('Enter rate : ');
            t=input('Enter time period : ');
            P=P0*exp(r*t);
            fprintf("Value after %.2f time units is : \n",t);
            disp(P);
        otherwise
            disp('Invalid choice');
    end
end