% Frobenius distance
for i = 1:8
    fieldname = sprintf("matrices_%d", i);
    S.(fieldname) = {}; 
    for j = 15:28
        filepath = sprintf("result/window_%d_20260313/LR_102109_%d_L.mat", j, j);
        matobj = load(filepath, "subj_model_parameters");
        data = matobj.subj_model_parameters(1, 1).Theta_normal(:,:,i); 
        S.(fieldname){end+1} = data; 
    end 
end


for i = 1:8
    fieldname = sprintf("distanceMat_%d", i);
    distances.(fieldname) = zeros(14, 14); 
    data_fieldname = sprintf("matrices_%d", i);
    for j = 1:14
        for k = 1:14
            distances.(fieldname)(j, k) = norm(S.(data_fieldname){j} - S.(data_fieldname){k}, 'fro');
        end
    end 
end
% export distances to csv 
excelFile = 'Frobenius_distances.xlsx';

for i = 1:8
    distance_fieldname = sprintf("distanceMat_%d", i);
    sheetName = sprintf('Matrix_%d', i);  % sheet name
    writematrix(distances.(distance_fieldname), excelFile, 'Sheet', sheetName);
end