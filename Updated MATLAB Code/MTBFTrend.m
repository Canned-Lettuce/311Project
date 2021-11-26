

function newTable = normalize(table)

    newTable = zeros(size(table,1),size(table,2));

    for i = 1:size(table,1)

        row = table(i,1:end);

        s = 0;

        for j = 1:size(table,2)

            s = s + row(j);

        end

        row = row / s;

        newTable(i,1:size(table,2)) = row;

    end

function R = correlate(table)

    R = zeros(56,56);

    for i = 1:56

        for j = 1:56

        [val index] = max(xcorr(table(i,1:end),table(j,1:end)));

        R(i,j) = index;

        end

    end 