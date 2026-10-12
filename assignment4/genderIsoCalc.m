function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeans, femaleGroupIsoMeans] = genderIsoCalc(Gender, Day1, Day2, Day3)
% genderIsoCalc calculates individual mean isometric strength values
% across 3 days and separates the results by gender.
%
% The individual means are not normalized.

% Calculate the mean isometric strength across all 3 days
indMeans = mean([Day1, Day2, Day3], 2);

% Identify males and females
maleId = Gender == "M";
femaleId = Gender == "F";

% Individual mean values for each group
maleIsoIndMeans = indMeans(maleId);
femaleIsoIndMeans = indMeans(femaleId);

% Mean of the individual subject means for each group
maleGroupIsoMeans = mean(maleIsoIndMeans);
femaleGroupIsoMeans = mean(femaleIsoIndMeans);

end