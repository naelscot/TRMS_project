--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS applications;
CREATE TABLE applications (
  app_id SERIAL PRIMARY KEY,
  emp_id numeric,
  app_status varchar(100),
  date_submit timestamp,
  date_occur timestamp,
  event_type varchar(100),
  cost numeric,
  description varchar(100),
  deadline timestamp
);

INSERT INTO applications VALUES (1, 3, 'pending','2022-04-08 10:52:35', NULL, 'CertPrep', 650, 'lorem ipsum', NULL),
(2, 2, 'denied','2022-03-27 15:19:49', NULL, 'Seminar', 230, 'lorem ipsum', NULL),
(3, 8, 'pending','2022-04-06 15:36:54', NULL, 'CertPrep', 545, 'lorem ipsum', NULL),
(4, 6, 'pending','2022-04-14 02:42:40', NULL, 'Uni', 850, 'lorem ipsum', NULL),
(5, 10, 'pending','2022-04-21 23:03:29', NULL, 'Tech', 458, 'lorem ipsum', NULL),
(6, 7, 'accepted','2022-04-10 03:36:58', NULL, 'Other', 250, 'lorem ipsum', NULL),
(7, 11,'pending','2022-04-19 05:38:24', NULL, 'Cert', 650, 'lorem ipsum', NULL),
(8, 10, 'denied','2022-03-31 14:36:11', NULL, 'Uni', 1100, 'lorem ipsum', NULL),
(9, 9, 'denied','2022-04-25 16:34:42', NULL, 'Seminar', 275, 'lorem ipsum', NULL),
(10, 5, 'pending','2022-04-22 04:34:45', NULL, 'Other', 125, 'lorem ipsum', NULL);

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  fname varchar(50),
  lname varchar(100),
  email varchar(100),
  passcode varchar(100),
  phone varchar(100),
  dept varchar(100),
  role varchar(100),
  reportsto NUMERIC,
  amountAvail NUMERIC
);


INSERT INTO employees VALUES (1,'Humberto','Flatley','Flatley.H@hotmail.com','powl99wski',
  '207-555-9812', 'IT', 'Department Head', NULL, 1000),
(2,'Noel','Cummerings','montana.noel@yahoo.com','lesch1989',
'207-555-4532', 'Finance', 'Department Head', NULL, 1000),
(3,'Lolita','Beier','beier50@mayert.biz','huelswil123',
'207-333-7825', 'Marketing', 'Department Head', NULL, 1000),
(4,'Osborne','Heaney','heaneyO@hotmail.com','abshire123',
'207-555-1132', 'HR', 'Benefits Coordinator', NULL, 1000),
(5,'Arnold','Quitzon','arnold.frami@lueilwitzkuhlman.com','howe890',
'207-555-9812', 'Finance', 'Direct Supervisor', 2, 1000),
(6,'Maurice','Schuppe','schuppe@spencer.info','casper',
'207-555-9812', 'Operations', 'Department Head', NULL, 1000),
(7,'Marcel','Doryle','marcel.doyle@bergnaumrobel.net','padbergbag',
'207-555-9812', 'Marketing', 'Direct Supervisor', 3, 1000),
(8,'Dario','Wintheiser','DarioW@herzog.info','littebig191',
'207-555-9812', 'IT', 'Direct Supervisor', 1, 1000),
(9,'Heath','Willms','Willms@lednerjohns.info','armstrong655',
'207-555-9812', 'Marketing', 'Direct Supervisor', 3, 1000),
(10,'Nicolette','Quitzon','Quitzon.N@hermiston.org','Knoll',
'207-555-9812', 'IT', 'Direct Supervisor', 1, 1000),
(11,'Marina','Shanahan','m.Shan@hermiston.org','Bypass1234',
'207-555-9812', 'Operations', 'Direct Supervisor', 6, 1000),
(12,'Maida','Lynch','LynchMaida@nicolas.com','JacobsMom334',
'207-555-9812', 'Education', 'Department Head', NULL, 1000);


--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS records;

DROP TABLE IF EXISTS reference;