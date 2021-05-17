--------------Welcome To Address Book DB Using SQL------------

---UC 1 : Create a table Address Book---
CREATE database AddressBookServiceDB;

---UC 2 : Create a table Address Book---

CREATE TABLE AddressBook
(
ID				int identity(1, 1) PRIMARY KEY(ID),
FirstName		varchar(50),
LastName		varchar(50),
Address			varchar(50),
City			varchar(50),
State			varchar(50),
Zip				int,
PhoneNumber	varchar(15),
Email			varchar(50),
)

---UC3 : Insert New contcts to Address Book----
INSERT INTO AddressBook(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES('Sanju', 'Jaiswal', 'Madgaon', 'Margao', 'Goa', '403707', '9988884443', 'sanju@gmail.com'),
('Akshay', 'Belu', 'Mahabaleshwar', 'Mahabaleshwar City', 'MH', '411032', '9997885554', 'Ak21@gmail.com'),
('Tushar', 'Khachane', 'Indore', 'Indore City', 'MP', '411055', '9977334443', 'tushark@gmail.com'),
('Akshay', 'Shinde', 'Undri', 'Pune', 'MH', '411047', '8877884443', 'shinde@gmail.com');

select * from AddressBook;

--UC4 edit existing contact
UPDATE AddressBook SET PhoneNumber = '7788553300' WHERE FirstName = 'Tushar'
SELECT * FROM AddressBook;

---UC 5: Delete contact using first name
DELETE FROM AddressBook WHERE FirstName = 'Tushar';
SELECT * FROM AddressBook;
