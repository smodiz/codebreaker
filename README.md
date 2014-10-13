### Code Breaker ###

This is an exercise from The RSpec Book. It utilizes:
* Ruby
* RSpec 
* Cucumber

It is a logic game in which the application comes up with a 
four digit code and the user submits guesses to try to break
the code. The application replies with hints to help the user
guess again. 

The secret code consists of four numbers between 1 and 6 (e.g. 1345).
When the user submits a guess, the application responds with a + 
for every number that is in the secret code AND is in the correct 
position. It responds with a - for every number that is in the 
code but not in the same position as the user's guess.


The plus signs always come before the minus signs and don't align
with specific positions in the guess or the secret code. For example,
if the secret code is 2345 and the user guesses 5316, we have one 
exact match (the 3) and one number match (the 5), so the application
responds with +-

The game itself is not difficult or impressive and not a reason 
for me to save the project but it is my first foray into Cucumber
so I'm saving this as a reference. 

