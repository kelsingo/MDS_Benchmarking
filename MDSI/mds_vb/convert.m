files = dir('LR_*_25_L.mat');

names = {
'2bk_tools'
'0bk_body'
'2bk_faces'
'0bk_tools'
'2bk_body'
'2bk_places'
'0bk_faces'
'0bk_places'
};

for i = 1:length(files)

    fprintf('Processing %s\n', files(i).name)

    data = load(files(i).name);
    subj_model_parameters = data.subj_model_parameters;

    A = subj_model_parameters.Theta_normal;

    % --- sanity check ---
    if size(A,3) ~= 8
        error('Theta_normal does not have 8 conditions!')
    end

    if size(A,1) ~= 16 || size(A,2) ~= 16
        error('Matrix size is not 16x16!')
    end

    subject_id = erase(files(i).name,'.mat');

    mkdir(subject_id)

    for k = 1:8

        fprintf('Layer %d -> %s\n', k, names{k})

        filename = fullfile(subject_id, sprintf('%s.txt', names{k}));

        writematrix(A(:,:,k), filename, 'Delimiter',' ');

    end

end