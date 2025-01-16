cclab@cclab-OptiPlex-3060:~$ sqlplus

SQL*Plus: Release 10.2.0.1.0 - Production on Thu Jan 16 13:00:43 2025

Copyright (c) 1982, 2005, Oracle.  All rights reserved.

Enter user-name: sys as sysdba
Enter password: 
Connected to an idle instance.

SQL> CONNECT sys AS SYSDBA
Enter password: 
Connected to an idle instance.
SQL> STARTUP                                  
ORACLE instance started.

Total System Global Area  805306368 bytes
Fixed Size		    1261444 bytes
Variable Size		  209715324 bytes
Database Buffers	  591396864 bytes
Redo Buffers		    2932736 bytes
Database mounted.
Database opened.
SQL> CREATE USER rakshita IDENTIFIED BY arg DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;

User created.

SQL> SELECT * FROM all_users;

USERNAME			  USER_ID CREATED
------------------------------ ---------- ---------
RAKSHITA			       38 16-JAN-25
SWD				       37 21-AUG-24
VIHARI				       36 20-AUG-24
FLOWS_020100			       35 31-JAN-06
FLOWS_FILES			       34 31-JAN-06
HR				       33 31-JAN-06
MDSYS				       32 31-JAN-06
ANONYMOUS			       28 31-JAN-06
XDB				       27 31-JAN-06
CTXSYS				       25 31-JAN-06
DBSNMP				       23 31-JAN-06

USERNAME			  USER_ID CREATED
------------------------------ ---------- ---------
TSMSYS				       20 31-JAN-06
DIP				       18 31-JAN-06
OUTLN				       11 31-JAN-06
SYSTEM					5 31-JAN-06
SYS					0 31-JAN-06

16 rows selected.

SQL> GRANT CONNECT TO rakshita
  2  ;

Grant succeeded.

SQL> GRANT CREATE TABLE TO rakshita;

Grant succeeded.

SQL> ALTER USER rakshita QUOTA UNLIMITED ON users;

User altered.

SQL> CREATE TABLE book (
  2  bid INT PRIMARY KEY;
bid INT PRIMARY KEY
                  *
ERROR at line 2:
ORA-00907: missing right parenthesis


SQL> ^C  

SQL> CREATE TABLE book (
  2  bid INT PRIMARY KEY,  
  3  btitle VARCHAR(10)
  4  );

Table created.

SQL> INSERT INTO book (bid, btitle) VALUES (11, 'OS');

1 row created.

SQL> INSERT INTO book (bid, btitle) VALUES (13, 'DBMS');  

1 row created.

SQL> INSERT INTO book (bid, btitle) VALUES (18, 'NW');

1 row created.

SQL> SELECT * FROM book;

       BID BTITLE
---------- ----------
	11 OS
	13 DBMS
	18 NW

SQL> ^C

SQL> STARTUP
ORA-01081: cannot start already-running ORACLE - shut it down first
SQL> CREATE USER rakshita IDENTIFIED BY arg DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;
CREATE USER rakshita IDENTIFIED BY arg DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp
            *
ERROR at line 1:
ORA-01920: user name 'RAKSHITA' conflicts with another user or role name


SQL> CONNECT rakshita/arg;
Connected.
SQL> CREATE TABLE book (
  2  bid INT PRIMARY KEY,  
  3  btitle VARCHAR(10)
  4  );  2    3       
SQL> CREATE TABLE book (
  2  bid INT PRIMARY KEY,  
  3  btitle VARCHAR(10)
  4  );  2    3       
SQL> CREATE TABLE book (
  2  bid INT PRIMARY KEY,
  3  btitle VARCHAR(10)
  4  );

Table created.

SQL> INSERT INTO book (bid, btitle) VALUES (11, 'OS');

1 row created.

SQL> INSERT INTO book (bid, btitle) VALUES (13, 'DBMS');  

1 row created.

SQL> INSERT INTO book (bid, btitle) VALUES (18, 'NW');

1 row created.

SQL> SELECT * FROM book;

       BID BTITLE
---------- ----------
	11 OS
	13 DBMS
	18 NW

SQL> CONNECT sys AS SYSDBA;
Enter password: 
Connected.
SQL> SELECT * FROM all_users;

USERNAME			  USER_ID CREATED
------------------------------ ---------- ---------
RAKSHITA			       38 16-JAN-25
SWD				       37 21-AUG-24
VIHARI				       36 20-AUG-24
FLOWS_020100			       35 31-JAN-06
FLOWS_FILES			       34 31-JAN-06
HR				       33 31-JAN-06
MDSYS				       32 31-JAN-06
ANONYMOUS			       28 31-JAN-06
XDB				       27 31-JAN-06
CTXSYS				       25 31-JAN-06
DBSNMP				       23 31-JAN-06

USERNAME			  USER_ID CREATED
------------------------------ ---------- ---------
TSMSYS				       20 31-JAN-06
DIP				       18 31-JAN-06
OUTLN				       11 31-JAN-06
SYSTEM					5 31-JAN-06
SYS					0 31-JAN-06

16 rows selected.

SQL> CONNECT rakshita/arg;
Connected.
SQL> CREATE TABLE Student (
  2  rollno INT PRIMARY KEY,
  3  name VARCHAR(20),
  4  DOB DATE,
  5  gender CHAR(1),
  6  class INT,
  7  college VARCHAR(20),
  8  city VARCHAR(20),
  9  marks INT);

Table created.

SQL> ^A^C
