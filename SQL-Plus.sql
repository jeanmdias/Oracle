-- Start SQL*Plus
sqlplus /nolog

SQL> conn username @server

SQL> cl scr

SQL> set linesize 150
SQL> set pagesize 300

SQL> set serveroutput on

SQL> set pagesize 0 (sem cabeçalho)
SQL> set pagesize 1 (com cabeçalho)
SQL> spool c:\[filename].txt
SQL> SELECT * FROM dual;
SQL> spool off

SQL> set autotrace on