# plsql-goto-functions-29597-emmanuel

**Student:** Emmanuel
**Student ID:** 29597
**Course:** Database Development with PL/SQL (INSY 8311)
**Instructor:** Eric Maniraguha
**Assignment:** Individual Assignment III: PL/SQL GOTO Statements and Functions
**Database:** Oracle (pluggable database ORCLPDB), connected as schema `STUDENT`
**Tool:** Oracle SQL Developer (version: add yours from Help → About)

## Project structure

```
00_setup/       create_tables.sql: creates and seeds departments and employees
01_goto/        A1 to A4: GOTO and CONTINUE WHEN tasks
02_functions/   B1 to B4 and C1: stored functions
03_tests/       B5 SELECT with functions, and the function and validator tests
screenshots/    Output screenshots for each task
docs/           REFLECTION.md
```

## How to run

Run everything in the `STUDENT` schema (connection ORCLPDB_student in SQL Developer).

1. Run `00_setup/create_tables.sql`. This must be run before the A2 and A4 files, and again whenever salaries have changed.
2. Run the four functions in `02_functions/`: B1, B2, B3, B4. Then run C1.
3. Run the programs in `01_goto/`: A1, A2, A3, A4. Re-run `create_tables.sql` before A2 and before A4, because each one applies a raise.
4. Run the tests in `03_tests/`: `B5_functions_in_select.sql`, `test_functions.sql`, and `test_validate_payroll.sql`.

Turn on output with View → DBMS Output, then the green + for the connection, or `DBMS_OUTPUT` lines will not appear.

## Assumptions to verify against the handout

- **A2 raise rule:** employees earning under 3000 receive a 10% raise. This was assumed from the task name and must match the handout.
- **B3 tax rule:** a flat 30% of the monthly salary. The handout may specify brackets instead.
- **B2 years of service:** calculated from `SYSDATE`, so results change over time.

## AI assistance

I used an AI assistant (Claude) as a tutor while working through the assignment. How I used it:

- To understand the GOTO rules and the difference between GOTO and `CONTINUE WHEN`.
- To get step-by-step guidance on the order of tasks, creating the repository and folders, and connecting in SQL Developer.
- To debug specific errors I reported, such as `ORA-00904` for a function that had not been created, and `ORA-02291` from a foreign key that blocked an insert.
- To check the wording of my commit messages and the repository structure.

I typed and ran the code myself in SQL Developer, and I checked each result against what the program should print. The assistant did not run the code on my machine. Where I used a code example from the guidance, I read it, ran it, and changed it when it did not match my handout. I can explain every line in the submitted files.

## Challenges I faced and how I solved them

1. **Folder name typo.** I created `02_function` instead of `02_functions`, so the later `touch` commands failed. I renamed the folder with `mv` and checked the structure with `ls -R`.
2. **Empty files.** The first commit recorded files that had no content yet. I learned to check file sizes with `ls -l` and to commit only after the content was written and tested.
3. **Misspelled file name.** `docs/REFLECTON.md` was committed by mistake. I renamed it to `REFLECTION.md` and amended the first commit.
4. **Wrong schema.** My first attempts ran in the `sysdba` connection and in another lab's script. I switched to the ORCLPDB_student connection, so the tables were created in the student schema.
5. **Foreign key blocked the invalid employee.** The `employees` table referenced `departments`, so employee 105 (department 99) could not be inserted, and only 4 rows appeared. The C1 validator needs that invalid row, so I removed the `REFERENCES` clause and rebuilt the table.
6. **Salaries changed twice.** Running A4 after A2 without resetting the data applied the raise again (2750 became 3025). I reset the values with `create_tables.sql` before each run, and I corrected the data with an `UPDATE` when the reset did not take effect.
7. **Placeholder copied literally.** I ran `ALTER TABLE ... DROP CONSTRAINT <constraint_name>` with the placeholder still in place, which gave `ORA-02250`. I rebuilt the table instead of searching for the constraint name.
8. **Functions missing from the schema.** B5 failed with `ORA-00904: invalid identifier` because the function files were empty and the functions had never been created. I pasted each function, ran it with F5, and checked `user_objects` until all four showed `VALID`.
9. **Test code in the function file.** The C1 file briefly contained the test script instead of the function. I restored the `CREATE OR REPLACE FUNCTION` code before committing.
10. **Part 1 missing from A3.** The file had only the fixed version, so there was no error to screenshot. I added the illegal version above it so the compile error appears.
11. **Unclosed quote in the terminal.** A `git commit -m` command with a missing closing quote left the terminal waiting for input. I cancelled with Ctrl+C and ran the command again.
12. **Repository title.** The README heading ended with a stray dash copied from the template name. I corrected the title.


