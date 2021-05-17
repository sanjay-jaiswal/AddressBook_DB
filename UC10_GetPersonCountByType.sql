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
('Akshay', 'Shinde', 'Undri', 'Pune', 'MH', '411047', '8877884443', 'shinde@gmail.com'),
('Sachin', 'Singh', 'Navelim', 'Margao', 'Goa', '403705', '9988214443', 'sachin2@gmail.com'),
('Rohan', 'S', 'Gogole', 'Margao', 'Goa', '403704', '9988880000', 'rohan12@gmail.com'),
('Vaishnavi', 'Singh', 'Colva', 'Margao', 'Goa', '403701', '9986664443', 'vaish13@gmail.com');

select * from AddressBook;

--UC4 edit existing contact
UPDATE AddressBook SET PhoneNumber = '7788553300' WHERE FirstName = 'Tushar'
SELECT * FROM AddressBook;

---UC 5: Delete contact using first name
DELETE FROM AddressBook WHERE FirstName = 'Tushar';
SELECT * FROM AddressBook;

---UC 6 : Retrieve person belong to city or state
SELECT * FROM AddressBook WHERE CITY = 'Margao';
SELECT * FROM AddressBook WHERE STATE = 'Goa';
SELECT * FROM AddressBook WHERE CITY = 'Pune' or STATE = 'MH';

---UC 7 : Get the size of address book by city or state.
SELECT CITY, COUNT(CITY) AS CITY_COUNT FROM AddressBook GROUP BY CITY;
SELECT STATE, COUNT(STATE) AS STATE_COUNT FROM AddressBook GROUP BY STATE;

---UC 8 : Retrieve sorted entries in alphabetically by name for given city.
SELECT * FROM AddressBook WHERE State = 'Goa' ORDER BY FIRSTNAME;

---UC 9 : Identify each address book by name and type.
ALTER table AddressBook ADD Name AS FIRSTNAME+' '+LASTNAME;
ALTER table AddressBook ADD TYPE VARCHAR(30);
SELECT Name,TYPE, FIRSTNAME, LASTNAME, ADDRESS, CITY, STATE, ZIP, PHONENUMBER, EMAIL FROM AddressBook;
UPDATE TOP(3) AddressBook SET TYPE = 'FRIENDS';
UPDATE AddressBook SET TYPE = 'FAMILY' WHERE FIRSTNAME = 'Sanju' or FIRSTNAME = 'Sachin';
UPDATE AddressBook SET TYPE = 'PROFESSION' WHERE FIRSTNAME = 'Rohan';
SELECT *FROM AddressBook;

---UC 10 : Ability to get count of contacts by type
SELECT TYPE, COUNT(*) AS TYPE_OF_COUNT FROM AddressBook GROUP BY TYPE;