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
Phone_Number	varchar(15),
Email			varchar(50),
)