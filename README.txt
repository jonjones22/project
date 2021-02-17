Please place your answers starting on the ANSWER line below each question,
adding lines as necessary, within the *** paragraph delimters.
********************************************
Q1: (15% of assignment): Every time "make test" successfully runs your
simulation, we get the same output game results in hideAndSeek2021.out:

$ cat hideAndSeek2021.out
000000001543,MSG,thread 0 process 0,0 Thread TAGGED 23 out of 100
000000001543,MSG,thread 1 process 0,1 Thread TAGGED 18 out of 100
000000001543,MSG,thread 2 process 0,2 Thread TAGGED 23 out of 100
000000001543,MSG,thread 3 process 0,3 Thread TAGGED 13 out of 100
000000001543,MSG,thread 4 process 0,4 Thread TAGGED 23 out of 100

How is it possible that each thread gets tagged the exact same number of
times in each test run, despite all the calls to the pseudo-random
number generator sample() in STM model hideAndSeek2021.stm?
ANSWER 1:

********************************************
Q2: (15% of assignment): 
Why are some variables in the model such as "pcb.players" prefixed with
"pcb." while others such as numberOfPlayers are not?
ANSWER 2:

********************************************
