%This code imports the file. The function itself just requires the name of
%the file you're importing.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = ...
importfile('isok_data_6803.csv');

%This code will return the values for female and male IsoIndMeans and the
%group means. All it requires is the gender and days 1-3 column
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMeans, femaleGroupIsoMeans] = ...
    genderIsoCalc(Gender, Day1, Day2, Day3);


%This code compares the values from different days, for example Day 1 to Day 2.
% If there is an increase they will be stored in a variable called day1toDay2
%or day2toDay3. The outputs will only return back with the subject ID's of
%subjects who increased from those days that were given.
day1toDay2 = dayComparer(SubjectID, Day1, Day2);
day2toDay3 = dayComparer(SubjectID, Day2, Day3);



%Created a function that divides day 1 from the weight and then calculates
%the mean
normDay1mean = NormIso(Day1, Weight);
normDay2mean = NormIso(Day2, Weight);
normDay3mean = NormIso(Day3, Weight);



%Finally I created the variable 'totalresults', which will hold the total
%results for everything that I have calculated. I made it into a cell array
%using {}. I added the strings 'Variable' and 'Results' to become column
%headers. I then added the name of the rest of the rows named after the
%variables calculated. Using mat2str I converted the result matrix into a
%string, doing this for all of the results that returned as numbers, while
%those that were strings I used strjoin to join together all of the results
%into one cell. Finally the writecell function created a table,
%totalresults was the variable I added to the table and I titled it
%'iso_results.csv'.

totalresults = {
    'Variable', 'Results';
    'maleIsoIndMeans', mat2str(maleIsoIndMeans);
    'femaleIsoIndMeans', mat2str(femaleIsoIndMeans);
    'maleGroupIsoMeans', mat2str(maleGroupIsoMeans);
    'femaleGroupIsoMeans', mat2str(femaleGroupIsoMeans);
    'day1toDay2', strjoin(string(day1toDay2), ', ');
    'day2toDay3', strjoin(string(day2toDay3), ', ');
    'normDay1mean', mat2str(normDay1mean);
    'normDay2mean', mat2str(normDay2mean);
    'normDay3mean', mat2str(normDay3mean)
};

writecell(totalresults, 'iso_results.csv');



