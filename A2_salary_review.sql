SET SERVEROUTPUT ON;

DECLARE
  CURSOR c_emp IS
    SELECT emp_id, first_name, salary FROM employees;
  v_new_salary employees.salary%TYPE;
BEGIN
  FOR r IN c_emp LOOP
    IF r.salary >= 3000 THEN
      GOTO next_emp;
    END IF;

    v_new_salary := r.salary * 1.10;

    UPDATE employees
       SET salary = v_new_salary
     WHERE emp_id = r.emp_id;

    DBMS_OUTPUT.PUT_LINE(r.first_name || ': ' || r.salary || ' -> ' || v_new_salary);

    <<next_emp>>
    NULL;
  END LOOP;

  COMMIT;
END;
/

SELECT emp_id, first_name, salary FROM employees ORDER BY emp_id;