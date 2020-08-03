function res = processingFun(im, n, al)
%�� ������ ���������� ����������� � ������� RGB24 �������� ���������
%����������� � ��������� ������ �� ���������� �������. ��� ���������
%������������� ������ �������� n � ������ ����� ������� 2n+1, ��� ��������
%������������ �������� ������������� ������ ���� ������ ���������
%����������� �������� ������������� ������ ���� ������ �� ��������, �������
%���������� ������������� ������ al, ��� ������ ����� ������������
%������������ �������� ������������� ������ ���� �� �������. ��� �����
%������, �� ��������������� ������� ��������, ������������ ������� ��������
%�������������� �������� �������.
    n_r = floor(size(im, 1)/(2*n+1));
    n_c = floor(size(im, 2)/(2*n+1));
    res = zeros(size(im, 1), size(im, 2));
    for i=1:n_r
        for j=1:n_c
            disp((i-1)*(2*n+1))
            M = im((i-1)*(2*n+1)+1:(i)*(2*n+1),(j-1)*(2*n+1)+1:(j)*(2*n+1), :);
            max_r = max(max(M(:, :, 1)));
            min_r = min(min(M(:, :, 1)));
            max_g = max(max(M(:, :, 2)));
            min_g = min(min(M(:, :, 2)));
            max_b = max(max(M(:, :, 3)));
            min_b = min(min(M(:, :, 3)));
            l = [max_r-min_r, max_g-min_g, max_b-min_b];
            check=0;
            for k=1:3
                if l(k)>al
                    check= check+1;
                end
            end
            if check>0
                res((i-1)*(2*n+1)+1:(i)*(2*n+1),(j-1)*(2*n+1)+1:(j)*(2*n+1)) = double(zeros(2*n+1, 2*n+1)):%+ max(l);
            else
                res((i-1)*(2*n+1)+1:(i)*(2*n+1),(j-1)*(2*n+1)+1:(j)*(2*n+1)) = (zeros(2*n+1, 2*n+1));%+ mean(l);
            end
        end
    end
    imshow(res);
end