function APC_array=APCorr(solution_matrix,APC_array)


% Compute the correlation matrix
corrMatrix = corrcoef(solution_matrix);

% Exclude diagonal elements
corrMatrixNoDiag = corrMatrix - eye(size(corrMatrix));

% Calculate the average pairwise correlation
averagePairwiseCorrelation = mean(corrMatrixNoDiag(:));
APC_array(end+1)=averagePairwiseCorrelation;



