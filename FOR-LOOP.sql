DECLARE

	CURSOR c1 is SELECT email_addr FROM employees;
		
BEGIN

	FOR r1 IN c1 LOOP
    DBMS_OUTPUT.PUT_LINE ('Email address is ' || r1.email_addr);
	END LOOP;
	
END;


-- Reversing the loop
BEGIN

  DBMS_OUTPUT.PUT_LINE ('Loop');
  
  FOR i IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE ('Loop counter is ' || i);
  END LOOP;
 
  DBMS_OUTPUT.PUT_LINE ('Reversing the loop');
  
  FOR i IN REVERSE 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE ('Loop counter is ' || i);
  END LOOP;
  
END;