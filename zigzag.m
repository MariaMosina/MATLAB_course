function M = zigzag(n)
M = zeros(n, n);
ii = 1;
jj = 1;
number = 1;
d = 1;
right_up = 1;
down_left = 0;
diag_down = 0;
diag_up = 0;
while d <= n
    M(ii, jj) = number;
    number = number +1;
    if right_up
        jj = jj+1;
        d = d+1;
        right_up = 0;
        diag_down = 1;
        continue;
    end
    if diag_down
        ii = ii +1;
        jj = jj -1;
        if jj == 1
            diag_down = 0;
            down_left = 1;
        end
        continue;
    end
    if down_left
        ii = ii+1;
        d = d+1;
        down_left = 0;
        diag_up = 1;
        continue;
    end
    if diag_up
        ii = ii-1;
        jj = jj+1;
        if ii == 1
            diag_up = 0;
            right_up = 1;
        end
        continue;
    end
end
right_down = 0;
down_right = 0;
if ii > n
    diag_up = 1;
    ii = ii-1;
    jj = jj+1;
else
    diag_down = 1;
    jj = jj-1;
    ii = ii+1;
end
while d <= 2*n-1
    M(ii, jj) = number;
    number = number +1;
    if ii == n &  jj == n
        break;
    end
    if right_down
        jj = jj+1;
        d = d+1;
        right_down = 0;
        diag_up = 1;
        continue;
    end
    if diag_up
        ii = ii-1;
        jj = jj+1;
        if jj == n
            diag_up = 0;
            down_right = 1;
        end
        continue;
    end
    if down_right
        ii = ii+1;
        d = d+1;
        down_right = 0;
        diag_down = 1;
        continue;
    end
    if diag_down
        ii = ii+1;
        jj = jj-1;
        if ii == n
            diag_down = 0;
            right_down = 1;
        end
        continue;
    end
end




% ii = 1;
% jj = 1;
% right = 1;
% down = 0;
% d_up = 0;
% d_down = 0;
% for k = 1:(n*n)
%     M(ii, jj) = k;
%     if ii == n && down == 1
%         jj= jj+1;
%         down = 0;
%         d_up=1;
%         continue;
%     end
%     if jj == n && right == 1
%         ii=ii+1;
%         right=0;
%         d_down=1;
%         continue;
%     end
%     
%     if right == 1
%         jj = jj+1;
%         right = 0;
%         if ii ==n
%             d_up =1;
%         else
%             d_down = 1;
%         end
%         continue;
%     end
%     if down == 1
%         ii = ii+1;
%         down = 0;
%         if jj == n
%             d_down = 1;
%         else
%             d_up = 1;
%         end
%         continue;
%     end
%     if d_down == 1;
%         ii = ii+1;
%         jj = jj-1;
%         if jj == 1
%             d_down = 0;
%             down = 1;
%         end
%         if ii == n
%             d_down = 0;
%             right = 1;
%             %jj = jj+1;
%         end
%         continue;
%     end
%     if d_up == 1
%         ii = ii-1;
%         jj = jj+1;
%         if ii == 1
%             d_up = 0;
%             right = 1;
%         end
%         if jj == n
%             d_up = 0;
%             down = 1;
%             %ii = i+1;
%         end
%         continue;
%     end
% end
