USE BIDVESTBANK;

CREATE TABLE BANKBRANCH(
       BRANCH_NAME VARCHAR(20) NOT NULL,
       BRANCH_CITY VARCHAR(20) NOT NULL,
       ASSETS INT NOT NULL,
       PRIMARY KEY (BRANCH_NAME)
);

CREATE TABLE CUSTOMER(
       CUSTOMER_NAME VARCHAR(20) NOT NULL, 
       CUSTOMER_STREET VARCHAR(20) NOT NULL,
       CUSTOMER_CITY VARCHAR(20) NOT NULL
);

CREATE TABLE CUSTOMERACCOUNT(
       ACCOUNT_NUMBER VARCHAR(20) NOT NULL,
       BRANCH_NAME VARCHAR(20) NOT NULL,
       BALANCE DOUBLE NOT NULL,
       PRIMARY KEY (ACCOUNT_NUMBER)
);

CREATE TABLE LOAN(
       LOAN_NUMBER VARCHAR(20) NOT NULL,
       BRANCH_NAME VARCHAR(20) NOT NULL,
       AMOUNT INT NOT NULL,
       PRIMARY KEY (LOAN_NUMBER)
);

CREATE TABLE DEPOSITOR(
       CUSTOMER_NAME VARCHAR(20) NOT NULL,
       ACCOUNT_NUMBER VARCHAR(20) NOT NULL
	   
);
  
CREATE TABLE BORROWER(
       CUSTOMER_NAME VARCHAR(20) NOT NULL,
       LOAN_NUMBER VARCHAR(20) NOT NULL
);

CREATE TABLE EMPLOYEE(
       EMPLOYEE_NAME VARCHAR(20) NOT NULL,
       BRANCH_NAME VARCHAR(20) NOT NULL,
       SALARY INT NOT NULL,
       PRIMARY KEY (EMPLOYEE_NAME)
);  


INSERT INTO BANKBRANCH VALUES('Midrand','Johannesburg',7100000);
INSERT INTO BANKBRANCH VALUES('Newtown','Johannesburg',9000000);
INSERT INTO BANKBRANCH VALUES('Mabopane','Pretoria',400000);
INSERT INTO BANKBRANCH VALUES('Belgravia','Kimberly',3700000);
INSERT INTO BANKBRANCH VALUES('Sunnyside','Pretoria',1700000);
INSERT INTO BANKBRANCH VALUES('Amanzimtoti','Durban',300000);
INSERT INTO BANKBRANCH VALUES('Universitas','Bloemfontein',2100000);
INSERT INTO BANKBRANCH VALUES('Mamelodi','Pretoria',8000000);

INSERT INTO CUSTOMER VALUES('Modise','Spring','George');
INSERT INTO CUSTOMER VALUES('Brooks','Senator','Johannesburg');
INSERT INTO CUSTOMER VALUES('Jooste','North','Kimbarly');
INSERT INTO CUSTOMER VALUES('Lombard','Sand Hill','Nelspruit');
INSERT INTO CUSTOMER VALUES('Mokwena','Walnut','Port-Elizabeth');
INSERT INTO CUSTOMER VALUES('Johnson','Mmabatho','Mafikeng');
INSERT INTO CUSTOMER VALUES('Johnson','Alma','Bloemfontein');
INSERT INTO CUSTOMER VALUES('Zwane','Main','Mafikeng');
INSERT INTO CUSTOMER VALUES('Lindsay','Park','George');
INSERT INTO CUSTOMER VALUES('Smith','North','Kimberly');
INSERT INTO CUSTOMER VALUES('Dlamini','Putnam','Port-Elizabeth');
INSERT INTO CUSTOMER VALUES('Williams','Nassau','Giyane');

INSERT INTO CUSTOMERACCOUNT VALUES('A-5324','Newtown',500);
INSERT INTO CUSTOMERACCOUNT VALUES('A-5624','Sunnyside',400);
INSERT INTO CUSTOMERACCOUNT VALUES('A-7794','Midrand',900);
INSERT INTO CUSTOMERACCOUNT VALUES('A-4467','Mabopane',700);
INSERT INTO CUSTOMERACCOUNT VALUES('A-3546','Midrand',750);
INSERT INTO CUSTOMERACCOUNT VALUES('A-3453','Universitas',700);
INSERT INTO CUSTOMERACCOUNT VALUES('A-2542','Mamelodi',350);

INSERT INTO LOAN VALUES('L-11','Mamelodi',900);
INSERT INTO LOAN VALUES('L-14','Newtown',1500);
INSERT INTO LOAN VALUES('L-15','Sunnyside',1500);
INSERT INTO LOAN VALUES('L-16','Sunnyside',1300);
INSERT INTO LOAN VALUES('L-17','Newtown',1000);
INSERT INTO LOAN VALUES('L-23','Universitas',2000);
INSERT INTO LOAN VALUES('L-93','Mabopane',500);

INSERT INTO DEPOSITOR VALUES('Johnson','A-5624');
INSERT INTO DEPOSITOR VALUES('Johnson','A-5624');
INSERT INTO DEPOSITOR VALUES('Johnson','A-7794');
INSERT INTO DEPOSITOR VALUES('Zwane','A-3546');
INSERT INTO DEPOSITOR VALUES('Lindsay','A-3453');
INSERT INTO DEPOSITOR VALUES('Smith','A-4467');
INSERT INTO DEPOSITOR VALUES('Dlamini','A-2542');

INSERT INTO BORROWER VALUES('Modise','L-16');
INSERT INTO BORROWER VALUES('Jooste','L-93');
INSERT INTO BORROWER VALUES('Johnson','L-15');
INSERT INTO BORROWER VALUES('Jackson','L-14');
INSERT INTO BORROWER VALUES('Zwane','L-17');
INSERT INTO BORROWER VALUES('Smith','L-11');
INSERT INTO BORROWER VALUES('Smith','L-23');
INSERT INTO BORROWER VALUES('Williams','L-17');

INSERT INTO EMPLOYEE VALUES('Modise','Sunnyside',1500);
INSERT INTO EMPLOYEE VALUES('Brown','Sunnyside',1300);
INSERT INTO EMPLOYEE VALUES('Gopal','Sunnyside',5300);
INSERT INTO EMPLOYEE VALUES('Johnson','Newtown',1500);
INSERT INTO EMPLOYEE VALUES('Loreena','Newtown',1300);
INSERT INTO EMPLOYEE VALUES('Peterson','Newtown',2500);
INSERT INTO EMPLOYEE VALUES('Rao','Austin',1500);
INSERT INTO EMPLOYEE VALUES('Sato','Austin',1600);


SHOW TABLES;
SELECT * FROM BANKBRANCH;
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMERACCOUNT;
SELECT * FROM LOAN;
SELECT * FROM DEPOSITOR;
SELECT * FROM BORROWER;
SELECT * FROM EMPLOYEE;

SELECT ACCOUNT_NUMBER FROM CUSTOMERACCOUNT WHERE BALANCE < 700;

SELECT * FROM CUSTOMERACCOUNT WHERE BALANCE < 700;

SELECT CUSTOMER_NAME FROM CUSTOMER WHERE CUSTOMER_CITY = 'JOHANNESBURG';

SELECT * FROM EMPLOYEE WHERE SALARY > 1500 AND BRANCH_NAME != 'NEWTOWN';

SELECT AVG(SALARY) AS 'AVG_SALARY'FROM EMPLOYEE;

SELECT MAX(ASSETS), BRANCH_NAME FROM BANKBRANCH;

SELECT EMPLOYEE_NAME FROM EMPLOYEE WHERE BRANCH_NAME = 'SUNNYSIDE';

SELECT * FROM BORROWER;

SELECT ACCOUNT_NUMBER FROM CUSTOMERACCOUNT WHERE BALANCE > 900;

SELECT ACCOUNT_NUMBER, BALANCE FROM CUSTOMERACCOUNT WHERE BRANCH_NAME = 'NEWTOWN' AND BALANCE > 600;

SELECT BRANCH_NAME, ASSETS FROM BANKBRANCH;
   