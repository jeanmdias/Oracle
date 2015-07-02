SELECT 		RS_OUT.USERNAME,
			RS_OUT.STATUS,
			RS_OUT.SQL_TEXT,
			--RS_OUT.ELAPSED_TIME,
			RS_OUT.TOOL,
			RS_OUT.O_USER
FROM(SELECT	SUBSTR(sess.status,1,10) 	AS status, 
			SUBSTR(sess.username,1,10) 	AS username, 
			SUBSTR(sql.sql_text,0,60) 	AS sql_text, 
			--SUBSTR(TO_CHAR(sql.elapsed_time / 1000000), 0, 15) 	AS elapsed_time, 	-- SECONDS
			--SUBSTR(TO_CHAR((sql.elapsed_time / 1000000)/60), 0, 15) AS elapsed_time, 	-- MINUTES
			SUBSTR(sess.module,1,15)  	AS tool,
			SUBSTR(OSUSER,1,15) 		AS o_user
	FROM 	gv$session sess,
			gv$sql     sql
	WHERE 	sql.sql_id(+) = sess.sql_id
	AND 	sess.username = '???') RS_OUT
GROUP BY	RS_OUT.USERNAME,
			RS_OUT.STATUS,
			RS_OUT.SQL_TEXT,
			--RS_OUT.ELAPSED_TIME,
			RS_OUT.TOOL,
			RS_OUT.O_USER;