function R = correlate(table,shift)

    R = zeros(56,56);

    for i = 1:56

        for j = 1:56

        [val index] = max(xcorr(table(i,1:end),table(j,1:end)));

       %% use either val or index

        %%R(i,j) = val;

        R_x = xcorr(table(i,1:end),table(j,1:end));

        R(i,j) = R_x(60+shift) / max(R_x);

        end

    end

R_0 = R(1,1);

%%R = R - R_0;

%%R = abs(R);

imagesc(R);

caxis([0.9 1]); 