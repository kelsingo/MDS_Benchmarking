% subj_ids = ['102109', '145632', '151425', '304020', '955465'];
for i = 15:28
    filepath = sprintf("result/window_%d_20260313/LR_102109_%d_L.mat", i, i);
    matobj = load(filepath, "subj_model_parameters");
    data = matobj.subj_model_parameters(1, 1);   % 16x129 matrix
    theta = data.Theta; 
    figure
    histogram(theta(:), 'Normalization', 'pdf')
    hold on
    [f,xi] = ksdensity(theta(:)); 
    plot(xi,f,'LineWidth',2)
    hold off 
    xlabel('Value')
    ylabel('Frequency')
    title(sprintf('Distribution of Theta at L = %d', i))
end 