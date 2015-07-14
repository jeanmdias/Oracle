DECLARE

	dt_use DATE;
	dt_end DATE; 
   
BEGIN
   
	dt_use := '01/01/2011';
	dt_end := '05/01/2011';
  
    WHILE dt_use <= dt_end LOOP
        
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(dt_use,'dd-Mon-yyyy'));
        
		dt_use := dt_use + 1;
    
    END LOOP;

END;

Dbms Output
-----------
01-Jan-2011
02-Jan-2011
03-Jan-2011
04-Jan-2011
05-Jan-2011