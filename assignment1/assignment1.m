%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Carlos Garcia-Dominguez
%
% Due: September 1, 2026
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'https://www.mathworks.com/help/matlab/index.html'

% 2. What does the command 'clear all' do?
%
% Answer: Clear all clears variables in scope, scripts and functions,
% persistent variables, MEX functions, and Global variables. Import lists
% clear only through command prompts.
%


% 3. Find a matlab function to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

averageAnswer = mean([1 7 21 32 67 32453])

% 4. What command would you type to see a list of all installed toolboxes?

  matlab.addons.toolbox.installedToolboxes      %<- command goes here

% 5. Write some commands that would return a list of all of the available 
% functions in the image processing toolbox? 

help images

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
 plot(x, y)    %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). What does
% this function do and how would you use it?

%
% Answer: kstest, performs a Kolmogorov-Smirnov test to see if a data
% vector comes from a standard normal distribution. Can be used to reject
% the Null hypothesis.
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: For and While. For is used when you know the exact number of
% times you want to run the code, When is used when you don't know how
% many repetitions you need, stops when it returns false.
% 
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: Not a Number, inf/inf or x = 0/0
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A, "omitnan")


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs


% 12. Create a variable myAge and assign it the value of your age. Then 
% create a new variable called ageLessTwo and subtract two from the value of the
% myAge variable. Create a third variable called agePlusOne and add one to 
% the value of the myAge variable.

myAge = 23

myAge =

23

ageLessTwo = myAge - 2

ageLessTwo =

21

agePlusOne = myAge + 1

agePlusOne =

24


% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Assign the value to a variable called maxNameLength.

 maxNameLength = namelengthmax

maxNameLength =

        2048


% 14. You need to convert some weight values from metric to standard units. 
% Create two appropriately named variables to store the original weight in 
% pounds and the original weight in ounces respectively. Use who and whos 
% to see the variables. Clear one of your variables and then use who and whos again.

originalWeightkg = 100;
% Add your code on the next line
whos originalWeightkg, WeightLbs, Weightoz
Name                  Size            Bytes  Class     Attributes

originalWeightkg      1x1                 8  double              


WeightLbs =

220.5000


Weightoz =

3.5274e+03



% 15. Assign a number with a decimal place to an appropriately named variable. Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming). Use whos to check your result. 

b = cast(z, "int32")

b =

int32

3


% 16. Create a variable called weightInLBs to store a weight in pounds. Convert this to 
% kilograms using an appropriate calculation or function and assign the result to a variable weightInKgs.

weightInLBs = 100

weightInLBs =

100

weightInKGs = (weightInLBs)/(2.2)

weightInKGs =

45.4545


% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) using an appropriate 
% calculation and store the result in a variable cTemp.

fTemp = 100

fTemp =

100

cTemp = ((fTemp)-32).*5/9

cTemp =

37.7778



% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA = [2;3;4;5;6;7]

vecA =

2
3
4
5
6
7

vecB = [1.1000;1.3000;1.5000;1.7000]

vecB =

1.1000
1.3000
1.5000
1.7000

vecC = [8;6;4;2]

vecC =

8
6
4
2



% 20. Give a MATLAB expression that would create a vector 
% (assigned to a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi. 

vec = linspace(0, 2*pi, 50)

vec =

Columns 1 through 9

0    0.1282    0.2565    0.3847    0.5129    0.6411    0.7694    0.8976    1.0258

Columns 10 through 18

1.1541    1.2823    1.4105    1.5387    1.6670    1.7952    1.9234    2.0517    2.1799

Columns 19 through 27

2.3081    2.4363    2.5646    2.6928    2.8210    2.9493    3.0775    3.2057    3.3339

Columns 28 through 36

3.4622    3.5904    3.7186    3.8468    3.9751    4.1033    4.2315    4.3598    4.4880

Columns 37 through 45

4.6162    4.7444    4.8727    5.0009    5.1291    5.2574    5.3856    5.5138    5.6420

Columns 46 through 50

5.7703    5.8985    6.0267    6.1550    6.2832



% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
% Assign your answer to a variable called colVec.

colVec = [-1: 0.5: 1]

colVec =

   -1.0000   -0.5000         0    0.5000    1.0000



% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called resultMat of all zeros with the 
% dimensions given by the values of rows and cols. The resultMat should
% change each time you execute your code. 

rows = randi([1, 5]);
cols = randi([1, 5]);
resultMat = zeros(rows, cols)


% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10 assigned to a variable named originalVec. Perform each of 
% the following on the original vector and store your results in appropriately 
% named variables. (you should have a seperate line of code for each)
originalVec = randi([-10, 10])
% - subtract 3 from each element

originalVec = randi([-10, 10]); subtractionVec = originalVec - 3

% - count how many are positive

originalVec = randi([-10, 10]);positiveCount = sum(originalVec > 0)

% - get the absolute value of each element

originalVec = randi([-10, 10]); absoluteVec = abs(originalVec)

% - find the maximum.

originalVec = randi([-10, 10]); maxVec = max(originalVec)

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

base1 = 21;base2 = 50;height = 72;trapArea = (base1 + base2)/2.*height

trapArea =

2556

%This code allows you to find the area of a trapezoid, with base1 being the
%length of base 1 of the trapezoid (top), base2 being the lower base of the
%trapezoid (bottom), and height being the height of the trapezoid (distance
%from base1 to base2). trapArea will run the calculation to find the area
%of all the given variables.



% 25. If you were to start your own lab/business, a key metric that you 
% might use is ROI when applying for a business loan or making organizational 
% decisions. The classic equation for ROI is:

% ROI = (Total Revenues – Total Costs) / Total Costs x 100

% Write some code that prompts the user to input total revenues and total 
% costs and then calculates the ROI and stores the value in a variable called
% ROI.

totalrev = ("Input total revenues"); totalco = ("Input Total costs"); ROI = (totalrev - totalco) / totalco.* 100



%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution for 
% part 2, make sure you click the Run Section button vs the Run button) 

%%% Enter the code for your program below this line



prompt = input('Hello World', "s");disp(prompt)



%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)