SET SERVEROUTPUT ON;

DECLARE
  v_num  NUMBER := -7;   -- change this value to test
BEGIN
  IF v_num > 0 THEN
    GOTO is_positive;
  ELSIF v_num < 0 THEN
    GOTO is_negative;
  ELSE
    GOTO is_zero;
  END IF;

  <<is_positive>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
  GOTO done;

  <<is_negative>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
  GOTO done;

  <<is_zero>>
  DBMS_OUTPUT.PUT_LINE(v_num || ' is zero');

  <<done>>
  NULL;
END;
/