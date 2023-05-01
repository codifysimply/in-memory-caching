
-- CS-Employee-Database Microsoft SQL Server.sql
-- Use SQL Server Management Studio or another SQL Server administrator.
-- Create an CS-Employee-Database database, then run this script. 

USE [CS-Employee-Database]
GO

DROP TABLE IF EXISTS [Employees];
GO

CREATE TABLE [Employees] (
   [EmployeeId] integer NOT NULL,
   [FirstName] varchar(40) NOT NULL,
   [LastName] varchar(40) NOT NULL,
   [Job] varchar(40) NOT NULL,
   [Manager] integer,
   [HireDate] date NOT NULL,
   [Salary] integer NOT NULL,
   
   PRIMARY KEY ([EmployeeId]),
   CONSTRAINT [fk_Manager] FOREIGN KEY ([Manager]) REFERENCES [Employees] ([EmployeeId])
      ON DELETE NO ACTION
	  ON UPDATE NO ACTION,
);
GO

INSERT INTO [Employees] VALUES (5510, 'Katherine','Peters', 'PRESIDENT', NULL, '1982-10-18', 5000);
INSERT INTO [Employees] VALUES (5967, 'Caroline','Glover', 'MANAGER', 5967, '1980-05-01', 2850);
INSERT INTO [Employees] VALUES (5794, 'Pippa	','Marshall', 'SALESMAN', 5967, '1985-09-28', 1250);
INSERT INTO [Employees] VALUES (5893, 'Simon','Powell', 'SALESMAN', 5967, '1986-02-20', 1600);
INSERT INTO [Employees] VALUES (5522, 'Cameron','Hudson', 'SALESMAN', 5967, '1980-02-22', 1250);
INSERT INTO [Employees] VALUES (5981, 'Oliver','Abraham', 'CLERK', 5967, '1985-12-03', 950);
INSERT INTO [Employees] VALUES (5744, 'Amelia','Fisher', 'SALESMAN', 5967, '1985-09-08', 1500);
INSERT INTO [Employees] VALUES (5882, 'Elizabeth','Thomson', 'MANAGER', 5510, '1989-06-09', 2450);
INSERT INTO [Employees] VALUES (5576, 'Harry','Sanderson', 'CLERK', 5882, '1990-01-23', 1300);
INSERT INTO [Employees] VALUES (5676, 'Dominic','Ince', 'MANAGER', 5510, '1984-04-02', 2975);
INSERT INTO [Employees] VALUES (5899, 'Jane','Jackson', 'ANALYST', 5676, '1987-12-09', 3000);
INSERT INTO [Employees] VALUES (5987, 'Jacob','Paterson', 'CLERK', 5676, '1989-01-12', 1100);
INSERT INTO [Employees] VALUES (5013, 'John','Bond', 'ANALYST', 5676, '1987-12-03', 3000);
INSERT INTO [Employees] VALUES (5470, 'Amy','Skinner', 'MANAGER', 5899, '1985-12-17', 3250);
INSERT INTO [Employees] VALUES (5674, 'Joanne','Sanderson', 'CLERK', 5470, '1986-12-17', 800);
INSERT INTO [Employees] VALUES (5779, 'Abigail','Manning', 'CLERK', 5470, '1987-12-17', 800);
INSERT INTO [Employees] VALUES (5670, 'Phil','Vaughan', 'CLERK', 5470, '1983-12-17', 800);
INSERT INTO [Employees] VALUES (5980, 'Megan','Simpson', 'CLERK', 5470, '1984-12-17', 800);
INSERT INTO [Employees] VALUES (5072, 'Kimberly','McLean', 'CLERK', 5470, '1988-12-17', 800);
INSERT INTO [Employees] VALUES (5187, 'Kevin','Pullman', 'CLERK', 5470, '1989-12-17', 800);
GO

