BEGIN
	
	[executable_section]
	
EXCEPTION
	
	WHEN DUP_VAL_ON_INDEX THEN
		dbms_output.put_line('ORA-00001 - You tried to execute an INSERT or UPDATE statement that has created a duplicate value in a field restricted by a unique index.');
	
	WHEN TIMEOUT_ON_RESOURCE THEN
		dbms_output.put_line('ORA-00051 - You were waiting for a resource and you timed out.');
	
	WHEN TRANSACTION_BACKED_OUT THEN
		dbms_output.put_line('ORA-00061 - The remote portion of a transaction has rolled back.');
	
	WHEN INVALID_CURSOR THEN
		dbms_output.put_line('ORA-01001 - You tried to reference a cursor that does not yet exist. This may have happened because you ve executed a FETCH cursor or CLOSE cursor before OPENing the cursor.');
	
	WHEN NOT_LOGGED_ON THEN
		dbms_output.put_line('ORA-01012 - You tried to execute a call to Oracle before logging in.');
	
	WHEN LOGIN_DENIED THEN
		dbms_output.put_line('ORA-01017 - You tried to log into Oracle with an invalid username/password combination.');
	
	WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('ORA-01403 - You executed a SELECT INTO statement and no rows were returned, or you referenced an uninitialized row in a table, or you read past the end of file with the UTL_FILE package.');
	
	WHEN TOO_MANY_ROWS THEN
		dbms_output.put_line('ORA-01422 - You tried to execute a SELECT INTO statement and more than one row was returned.');
	
	WHEN ZERO_DIVIDE THEN
		dbms_output.put_line('ORA-01476 - You tried to divide a number by zero.');
	
	WHEN INVALID_NUMBER THEN
		dbms_output.put_line('ORA-01722 - You tried to execute a SQL statement that tried to convert a string to a number, but it was unsuccessful.');
	
	WHEN STORAGE_ERROR THEN
		dbms_output.put_line('ORA-06500 - You ran out of memory or memory was corrupted.');
	
	WHEN PROGRAM_ERROR THEN
		dbms_output.put_line('ORA-06501 - This is a generic "Contact Oracle support" message because an internal problem was encountered.');
		
	WHEN VALUE_ERROR THEN
		dbms_output.put_line('ORA-06502 - You tried to perform an operation and there was a error on a conversion, truncation, or invalid constraining of numeric or character data.');
		
	WHEN CURSOR_ALREADY_OPEN THEN
		dbms_output.put_line('ORA-06511 - You tried to open a cursor that is already open.');

   WHEN OTHERS THEN
		[statements]

END;


-- EXAMPLE
BEGIN
	INSERT INTO suppliers (supplier_id, supplier_name )
	VALUES ( supplier_id_in, supplier_name_in );

EXCEPTION
	WHEN DUP_VAL_ON_INDEX THEN
		raise_application_error (-20001,'You have tried to insert a duplicate supplier_id.');

	WHEN OTHERS THEN
		raise_application_error (-20002,'An error has occurred inserting a supplier.');

END;