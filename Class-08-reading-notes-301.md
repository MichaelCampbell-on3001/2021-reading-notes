
##Read: 08 - SQL
A **database** is nothing but a collection of organized data. It doesn’t have to be in a digital format to be called a **database**. A *telephone directory* is a good example, which stores data about people and organizations with a contact number. 
**Software** which is used to manage a digital database is called a *Database Management System (DBMS)*. The most prevalent database organizational model is the *Relational Model*, developed by Dr. E F Codd in his groundbreaking research paper - *”A Relational Model of Data”* for Large Shared Data Banks.
In this model, *data* to be stored is organized as rows inside a table with the column headings specifying the corresponding type of data stored. This is not unlike a spreadsheet where the first row can be thought of as *column headings* and the subsequent rows storing the actual data.
**SQL** stands for *Structured Query Language* and it is the de-facto standard for interacting with relational *databases*. Almost all database management systems you’ll come across will have a SQL implementation. SQL was standardized by the *American National Standards Institute* (ANSI) in 1986 and has undergone many revisions, most notably in 1992 and 1999. 
### SQL Commands Classification
+ **Data Definition Language (DDL)** : CREATE TABLE, ALTER TABLE, DROP TABLE etc.
These commands allow you to create or modify your database structure.
+ **Data Manipulation Language (DML)** : INSERT, UPDATE, DELETE
These commands are used to manipulate data stored inside your database.

+ **Data Query Language (DQL)** : SELECT
Used for querying or selecting a subset of data from a database.
+ **Data Control Language (DCL)** : GRANT, REVOKE etc.
Used for controlling access to data within a database, commonly used for granting user
privileges.
+ **Transaction Control Commands** : COMMIT, ROLLBACK etc.
Used for managing groups of statements as a unit of work.


