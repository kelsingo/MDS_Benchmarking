%matObj = load("result/LR_102109.mat", "subj_model_parameters");
%data = matObj.subj_model_parameters(1,1);
null_spatial = load("result/null_model/LR_102109_15_L.mat", "subj_model_parameters");
data_null_spatial = null_spatial.subj_model_parameters(1,1);
%null_temporal = load("result/null_model/LR_102109.mat", "subj_model_parameters");
%data_null_temporal = null_temporal.subj_model_parameters(1,1);

figure('Name', 'Theta Normal Connection Matrices', 'Color', 'w');

for index = 1:8
    subplot(4, 2, index);
    non_null = data_null_spatial.Theta_normal(:, :, index); 
    imagesc(non_null);
    axis square;
    colorbar;
    %if index == 1
    %    title(["Condition ", num2str(index) "(REAL)"]);
    %end
    
end 