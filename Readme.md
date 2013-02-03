# OpenMP RedBlue Simulation
***

*Parallel version requires a compiler with OpenMP support.*

## What is the RedBlue simulation?

A host of red and blue cells inhabit a board. Every turn, the red cells move one cell to the
right if that cell is not occupied. On the next turn, the blue cells move a cell down, if they
can. Once they reach the edge of the board they wrap around to the beginning of the board. This
continues until one block(user-defined) contains a certain density of red cells or until all the
iterations(user-defined) are exhausted.

Furethermore, cells of the same colour move simultaneously, so for example if a row looked like:
<Space is S>

RR__R

Then after one move will appear:

R_R_R

Only the middle cell has moved.

## How to Run

* To build:
    make

* To clean:
    make clean

*Timing relies on OpenMP timing libraries. If compiled without OpenMP, time will always display -1 second.*