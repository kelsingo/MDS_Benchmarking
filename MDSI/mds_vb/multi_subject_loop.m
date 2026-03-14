for l = 24:28
    for i = 1:5
        fprintf('--- Starting Batch Processing: Subject Index %d ---\n', i);
    
        try 
            MDS_main(i, l)
        catch ME
            fprintf('--- Catch error during processing Subject Index %d ---\n', i);
            fprintf('Error Message: %s\n', ME.message);
            
            % This prints the exact line number where the error happened
            fprintf('In File: %s, at line %d\n', ME.stack(1).name, ME.stack(1).line);
            fprintf('%s\n', getReport(ME));
            continue;
    
        end
        fprintf('--- Finished processing Subject Index %d', i); 
    end 
end