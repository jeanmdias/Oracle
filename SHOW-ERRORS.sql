-- Show procedure compilation errors
SHOW ERRORS PROCEDURE PROC1;

-- Show function compilation errors
SHOW ERRORS FUNCTION FUNC1;


CREATE PROCEDURE PROC2 AS
BEGIN
	:P1 := 1;
END;
/

SHOW ERRORS PROCEDURE PROC2;

Errors: check compiler log
-------------------------------------------------
3/2            PLS-00049: bad bind variable 'P1'