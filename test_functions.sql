SET SERVEROUTPUT ON;

BEGIN
  DBMS_OUTPUT.PUT_LINE('Annual (2500/mo): ' || fn_annual_salary(2500));
  DBMS_OUTPUT.PUT_LINE('Years of service (2018-03-15): ' || fn_years_of_service(DATE '2018-03-15'));
  DBMS_OUTPUT.PUT_LINE('Tax on 2500: ' || fn_calculate_tax(2500));
  DBMS_OUTPUT.PUT_LINE('Dept 10: ' || fn_dept_name(10));
  DBMS_OUTPUT.PUT_LINE('Dept 999: ' || fn_dept_name(999));
END;
/