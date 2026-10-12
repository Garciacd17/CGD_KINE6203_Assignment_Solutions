function [SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile(filename)

%importfile is a function that I created that will import a file into
%matlab and separate the variables into ones that are already created for
%it.

%This will read the file that is provided and store it into a variable
%named data
data = readtable(filename);

%This will create all of the different variables that are needed based off
%of the headers.

SubjectID = data.SubjectID;
Age = data.Age;
Gender = data.Gender;
Weight = data.Weight;
Day1 = data.Day1;
Day2 = data.Day2;
Day3 = data.Day3;

end
