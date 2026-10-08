CREATE OR REPLACE FUNCTION fn_calculate_tax (
  p_salary IN NUMBER
) RETURN NUMBER
IS
  c_tax_rate CONSTANT NUMBER := 0.30;
BEGIN
  RETURN ROUND(p_salary * c_tax_rate, 2);
END fn_calculate_tax;
/