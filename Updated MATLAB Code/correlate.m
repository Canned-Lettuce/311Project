function R = correlate(table)

    R = zeros(56,56);

    for i = 1:56

        for j = 1:56

        [val index] = max(xcorr(table(i,1:end),table(j,1:end)));

        R(i,j) = index;

        end

    end 