% Load the data from the NFL Combine and pro day data file
% using the read table tool.
data = readtable('NFL Combine and pro day data (1987 - 2021).csv');

% View a summary of the data in the table using the summary 
% function. 
summary(data);

% Calculate summary statistics for the timed variables in the
% database using appropriate functions. (Shuttle, 40, 3 cone)
summary(data.Shuttle)
summary(data.x40Yard)
summary(data.x3Cone)

variableSubset = ["Shuttle", "x40Yard", "x3Cone"];
varfun(@(x)mean(x,'omitnan'), data, 'InputVariables', variableSubset)

% Create a histogram showing all three distributions for these
% timed variables. Make sure to label your figure and add a legend. 

figure('Name', "Combined Histogram")
histogram(data.Shuttle)
hold on
histogram(data.x40Yard)
histogram(data.x3Cone)
xlabel("Time Bin")
ylabel("Number of Observations")
legend(variableSubset)
title("Frequency of Timed Tests - NFL Combine Participants from 1987-2021")
hold off

% Create a scatter plot in a new figure showing the relationship 
% between 40 yard dash performance and shuttle time).

figure('Name', "40 yard vs Shuttle Scatterplot")
scatter(data.x40Yard, data.Shuttle)
xlabel("40 Yard Dash Time")
ylabel("Pro Shuttle Time")
title("40 yard vs Shuttle Run Performance - NFL Combine Participants from 1987-2021")

% Calculate the correlation coefficient between these two variables.

rValue = corr(data.x40Yard, data.Shuttle, "Rows", "complete");
disp(rValue)

% If your correlation coefficient indicates a strong relationship,
% fit a linear model to your data and calculate the coefficient of
% variation (r-squared). Plot your model on your scatterplot. 

LinearModel = fitlm(data.x40Yard, data.Shuttle);
hold on
plot(LinearModel)
xlabel("40 Yard Dash Time")
ylabel("Pro Shuttle Time")
title("40 yard vs Shuttle Run Performance - NFL Combine Participants from 1987 - 2021")
hold off

% Run a t-test to determine if there is a difference in means between
% the 40 yard dash and the shuttle run. 


