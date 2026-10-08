SET SERVEROUTPUT ON;

DECLARE
  CURSOR c_emp IS
    SELECT emp_id, first_name, salary FROM employees;
  v_new_salary employees.salary%TYPE;
BEGIN
  FOR r IN c_emp LOOP
    CONTINUE WHEN r.salary >= 3000;

    v_new_salary := r.salary * 1.10;

    UPDATE employees
       SET salary = v_new_salary
     WHERE emp_id = r.emp_id;

    DBMS_OUTPUT.PUT_LINE(r.first_name || ': ' || r.salary || ' -> ' || v_new_salary);
  END LOOP;

  COMMIT;
END;
/