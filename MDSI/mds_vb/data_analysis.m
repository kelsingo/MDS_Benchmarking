%matObj = load("result/LR_102109.mat", "subj_model_parameters");
%data = matObj.subj_model_parameters(1,1);
for i = 15:15
    pdf_file = sprintf("Theta_normal_all_subjects_%d.pdf", i);
    folder = sprintf("result/window_%d_20260313", i);
    files = dir(fullfile(folder,"*.mat"));
    
    for f = 1:length(files)
        filepath = fullfile(folder, files(f).name);
        matobj = load(filepath, "subj_model_parameters");
        data = matobj.subj_model_parameters(1,1);
        figure('Name', files(f).name, 'Color', 'W')
        
        for index = 1:8
            subplot(4, 2, index);
            connectivity = data.Theta_normal(:, :, index); 
            imagesc(connectivity);
            axis square;
            colorbar;  
        end 
        sgtitle(files(f).name,'Interpreter','none')
        exportgraphics(gcf, pdf_file, 'Append', true);
        close(gcf)
    end 
end


