# Reflection — Individual Assignment III

## Part A — GOTO Statements

In Part A, I learned how the `GOTO` statement works in PL/SQL. I used `GOTO` to move program execution to specific labels when certain conditions were met.

### A1 — Number Classifier
I learned how `GOTO` can be used to classify a number as positive, negative, or zero. This helped me understand how labels and conditional statements work together.

### A2 — Salary Review
This task helped me understand how `GOTO` can control the flow of a PL/SQL program based on salary conditions. I also learned that using `GOTO` can make a program harder to follow when there are many labels.

### A3 — Illegal GOTO and Fix
I learned that not every `GOTO` statement is legal in PL/SQL. A `GOTO` cannot jump into certain restricted scopes, such as entering a loop or another block from an invalid location. Correcting the illegal `GOTO` helped me understand PL/SQL's control-flow rules better.

### A4 — Rewrite Without GOTO
Rewriting the program without `GOTO` showed me that structured programming using `IF`, `ELSIF`, `ELSE`, and other control structures can make code easier to read, understand, and maintain.

## Part B — Functions

In Part B, I learned how to create and use PL/SQL functions. A function performs a specific task and returns a value.

### B1 — Annual Salary
I created a function for calculating annual salary from monthly salary. This demonstrated how a function can perform a calculation and return the result.

### B2 — Years of Service
I learned how a function can calculate an employee's years of service using dates. This showed me how functions can be useful for processing employee information.

### B3 — Tax Calculator
The tax calculator helped me understand how conditional logic can be placed inside a function. The function can calculate tax according to the required salary rules and return the result.

### B4 — Department Name
I learned how a function can retrieve and return information such as a department name based on a department identifier. This demonstrated how functions can work with database data.

### B5 — Functions in SQL
I learned that PL/SQL functions can be called from SQL statements when they meet the required conditions. This makes functions reusable and useful when working with database queries.

## Part C — Combined Task

### C1 — Payroll Validator
The payroll validator combined the concepts learned in the previous tasks. I used functions to perform calculations and validation while applying control-flow logic to determine whether payroll information was valid.

This task helped me understand how different PL/SQL concepts can be combined to solve a practical database problem.

### C2 — Overall Reflection

This assignment improved my understanding of PL/SQL control flow, `GOTO` statements, functions, conditional logic, and SQL integration. I learned that although `GOTO` can be used to control program execution, it should be used carefully because excessive use can make code difficult to read and maintain.

The function exercises were particularly useful because they showed me how to separate repeated calculations and operations into reusable pieces of code. I also learned how PL/SQL functions can interact with database data and be used in SQL statements.

One of the main challenges was understanding the rules governing `GOTO`, especially why some jumps are illegal. Another challenge was ensuring that functions returned the correct data type and produced the expected results.

Overall, this assignment helped me understand the importance of writing clear, structured, and reusable PL/SQL code. I now have a better understanding of when to use control structures, when to use functions, and why structured programming is generally preferable to unnecessary use of `GOTO`.
