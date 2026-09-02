%Carlos Garcia-Dominguez, September 1, 2026. This code will allow you to
%play tic-tac-toe with the computer, enjoy!

prompt="Hello! Would you like to play with me? Y/N: ";
txt= input(prompt, "s");

if    isempty(txt) || strcmpi(txt, 'Y')
    txt = 'Y';

userScore = 0;
codeScore = 0;
drawScore = 0;

rematch = true;

while rematch

board = ["1", "2", "3";
    "4", "5", "6";
    "7", "8", "9"];


disp(board);

turn = input("Want to go first? 1 is Yes, 2 is No: ");

if turn == 1
    disp("Alright! Lets get started!");
starter = true;

elseif turn == 2
    disp("Suit yourself!");
    starter = false;
else 
    disp("Nice try! I guess you can start!");
    starter = true;
end

results = "";
gameOver = false;

while ~gameOver

    if starter

        disp("Alright! Go ahead!");

        move = input("Choose a number! (1-9): ");

        if move >= 1 && move <= 9

            row = ceil(move / 3);
            col = mod(move - 1, 3) + 1;

            if board(row, col) ~= "X" && board(row, col) ~= "O"

                board(row,col) = "X";

                disp(board);

                starter = false;
                
            else 
                disp("Can't do that! Try a different one?");

            end 

        else 
            disp("Choose any number 1-9!");

        end 

    else 
        disp("Alright! My turn.");

        open = [];

        for i = 1:9

            row = ceil(i / 3);
            col = mod(i - 1, 3) + 1;
            
            if board(row, col) ~= "X" && board(row,col) ~= "O"

                open(end+1) = i;
            end

        end 

        MyMove = open(randi(length(open))); 

        row = ceil(MyMove / 3);
        col = mod(MyMove - 1, 3) + 1;

        board(row, col) = "O";

        disp(board);

        starter = true;

    end 

    for r = 1:3

        if board(r, 1) == board(r,2) && ...
                board(r,2) == board(r,3)

            if board(r,1) == "X"

                disp("Dang, you got me this time!");
                results = "Player";
                gameOver = true;

            elseif board(r,1) == "O"

                disp("Bro how'd you lose?");
                results = "Computah";
                gameOver = true;

            end
        end
    end

    for c = 1:3

        if board(1,c) == board(2,c) && ...
                board(2,c) == board(3, c)

            if board(1,c) == "X"

                disp("Dang, you got me this time!");
                results = "Player";
                gameOver = true;

            elseif board(1,c) == "O"

                disp("Bro how'd you lose?");
                results = "Computah";
                gameOver = true;

            end

        end

    end 

    if board(1,1) == board(2,2) && ...
            board(2,2) == board(3,3)

        if board(1,1) == "X"

            disp("Dang, you got me this time!"); 
            results = "Player";
            gameOver = true;

        elseif board(1,1) == "O"

            disp("Bro how'd you lose?");
            results = "Computah";
            gameOver = true;

        end
    end 

    if board(1,3) == board(2,2) && ...
            board(2,2) == board(3,1)

        if board(1,3) == "X"

            disp("Dang, you got me this time!");
            results = "Player";
            gameOver = true;

        elseif board(1,3) == "O"

            disp("Bro how'd you lose?");
            results = "Computah";
            gameOver = true;
if gameOver
    break;
end 

        end
    end

   if ~gameOver

       open = 0;

       for i = 1:9
          
           row = ceil(i / 3);
           col = mod(i - 1, 3) + 1;

           if board(row,col) ~= "X" && board(row,col) ~= "O"

               open = open + 1;

           end

       end
       if open == 0

           disp ("Dang, we both suck.");
           results = "Draw";
           gameOver = true;

       end
   end
end

if results == "Player"
    userScore = userScore + 1;

elseif results == "Computah"
    codeScore = codeScore + 1;

elseif results == "Draw"
    drawScore = drawScore + 1;

end



restart = input("Wanna rematch?? Y/N: ", "s"); 

if strcmpi(restart, 'Y')

    disp("Ok, ok, lets go again!");
    rematch = true;

elseif strcmpi(restart, 'N')

    disp(" ");
    disp("------ Total Score! ------");
    disp("Player: " + userScore);
    disp("Computah: " + codeScore);
    disp("Draws. Womp Womp: " + drawScore);
    disp("--------------------------");

disp("Goodbye! Maybe next time!");
rematch = false;

else
    disp("IDK what that means. Guess it's a no!");

    disp(" ");
    disp("------ Total Score! ------");
    disp("Player: " + userScore);
    disp("Computah: " + codeScore);
    disp("Draws. Womp Womp: " + drawScore);
    disp("--------------------------");

    rematch = false;


end

end


elseif strcmpi(txt, 'N')

    disp("Goodbye! See you next time!")

end 

