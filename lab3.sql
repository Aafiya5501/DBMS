---PART:A---
CREATE TABLE CRICKETE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
)
INSERT INTO CRICKETE VALUES
('SACHIN TENDULKAR','MUMBAI',30),
('RAHUL DRAVID','BOMBAY',35),
('M.S.DHONI','JARKHAND',30),
('SURES RAINA','GUJRAT',31)
SELECT *FROM CRICKETE

 --Create table Worldcup from cricket with all the columns and data.
 SELECT*INTO WORLDCUP FROM CRICKETE
 SELECT*FROM WORLDCUP
 --Create table T20 from cricket with first two columns with no data
 SELECT CITY,NAME INTO T20 FROM CRICKETE WHERE 1=0
 SELECT * FROM T20
 drop table T20
 --Create table IPL From Cricket with No Data
 SELECT *INTO IPL FROM CRICKETE WHERE 1=0
 SELECT*FROM IPL
 ---PART:B---
CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
)
INSERT INTO EMPLOYEE VALUES
('JAT PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)
SELECT*FROM EMPLOYEE
--1. Create table Employee_detail from Employee with all the columns and data.
SELECT *INTO EMPLOYEE_DETAIL FROM EMPLOYEE
SELECT*FROM EMPLOYEE_DETAIL
--2. Create table Employee_data from Employee with first two columns with no data.
SELECT CITY,NAME INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=0
SELECT * FROM EMPLOYEE_DATA
--3. Create table Employee_infO from Employee with no Data
SELECT*INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 0=1
SELECT*FROM EMPLOYEE_INFO
---PART:C---
--1. Insert the Data into Employee_infO from Employee whose CITY is Rajkot
SELECT*INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE CITY='RAJKOT'
SELECT *FROM EMPLOYEE_INFO

--2. Insert the Data into Employee_info from Employee whose age is more than 32
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE AGE>32 
SELECT *FROM EMPLOYEE_INFO


 ------------------------------------------UPDATE--------------------------------------------------------------
 ---PART-a----
-- 1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT =5000
WHERE AMOUNT=3000
SELECT * FROM DEPOSIT
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW
SET BNAME= 'C.G.ROAD'
WHERE CNAME='ANIL'
SELECT * FROM BORROW
--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT
SET ACTNO=111,AMOUNT=5000
WHERE CNAME='SANDIP'
SELECT * FROM DEPOSIT
--4. Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=7000
WHERE CNAME='KRANTI'
SELECT*FROM DEPOSIT
--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI'
SELECT*FROM BRANCH
--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT
SET BNAME='NEHRUPLACE'
WHERE CNAME='MEHUL'
SELECT * FROM DEPOSIT

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use DepositTable)
UPDATE DEPOSIT 
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107
SELECT *FROM DEPOSIT
--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT
SET ADATE='1996-4-1'
WHERE CNAME='ANIL'
SELECT *FROM DEPOSIT
--9. Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE CNAME='MINU'
SELECT*FROM DEPOSIT
--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=5000,ADATE='1996-4-1'
WHERE CNAME='PRAMOD'
SELECT * FROM DEPOSIT
----PART-B----
--1.Give 10% Increment in Loan Amount.
UPDATE BORROW
SET AMOUNT=(AMOUNT+(AMOUNT*0.1))
SELECT*FROM BORROW
--2.Customer deposits additional 20% amount to their account, update the same.
UPDATE DEPOSIT
SET AMOUNT=(AMOUNT+(AMOUNT*0.2))
SELECT*FROM DEPOSIT

----PART-C----
--1.Update amount of loan no 321 to NULL.
UPDATE BORROW
SET
