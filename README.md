# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in Hack. The `foo` function adds 1 to the input, which can overflow if the input is a sufficiently large integer. The `bar` function then multiplies the result, making the overflow more likely and more severe. 

The bug is showcased in `bug.hack`. The solution, which uses appropriate checks and handling of potential overflow, is in `bugSolution.hack`. This example highlights the importance of careful consideration of integer limits when working with Hack or any language that does not automatically prevent integer overflow. 