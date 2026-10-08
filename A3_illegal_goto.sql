SET SERVEROUTPUT ON;
-- PART 1: ILLEGAL (label inside an IF block)
DECLARE
  v_num NUMBER := 5;
BEGIN
  GOTO inside_if;

  IF v_num > 0 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside IF');
  END IF;
END;
/


DECLARE
  v_num NUMBER := 5;
BEGIN
  GOTO after_check;

  IF v_num > 0 THEN
    DBMS_OUTPUT.PUT_LINE('Inside IF');
  END IF;

  <<after_check>>
  DBMS_OUTPUT.PUT_LINE('Jumped past the IF block');
END;
/