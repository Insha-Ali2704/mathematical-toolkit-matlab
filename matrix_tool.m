function matrix_tool()
    clc;
    disp('===== MATRIX OPERATIONS =====');
    disp('1. Addition');
    disp('2. Subtraction');
    disp('3. Multiplication');
    disp('4. Transpose');
    disp('5. Determinant');
    disp('6. Inverse');
    disp('7. Eigen Values');
    disp('0. Back');
    ch=input('Enter your choice : ');
    switch ch
        case 1
            A=input('Enter matrix A: ');
            B=input('Enter matrix B : ');
            if all(size(A)==size(B))
                C=A+B
            else
                disp('Make sure size of both matrices are same.');
            end
        case 2
            A=input('Enter matrix A: ');
            B=input('Enter matrix B : ');
            if all(size(A)==size(B))
                C=A-B
            else
                disp('Make sure size of both matrices are same.');
            end
        case 3
            A=input('Enter matrix A: ');
            B=input('Enter matrix B : ');
            if size(A,2)==size(B,1)
                C=A*B
            else
                disp('Matrix multiplication not possible.');
            end
        case 4
            A=input('Enter matrix : ');
            B=A'
        case 5
            A=input('Enter matrix A: ');
            B=det(A)
        case 6
            A=input('Enter matrix A: ');
            if det(A)~=0
                B=inv(A)
            else
                disp('Matrix inverse not possible.Make sure determinant is not zero');
            end
        case 7
            A=input('Enter matrix A: ');
            B=eig(A)
        otherwise
            disp('Invalid input1');
    end

end
