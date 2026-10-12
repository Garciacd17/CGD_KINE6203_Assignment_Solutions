function [NormData] = NormIso(D1, W)

%NormIso is a function that I decided to create that will weight normalize
%the data from the day that is provided

NormData = mean((D1 ./ W));

%The output, (NormData), will return the mean of the weight normalized
%depending on the day that is provided

end 