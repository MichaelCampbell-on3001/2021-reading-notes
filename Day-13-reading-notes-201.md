## Reading notes day 13
The Past, Present, and Future of Local Storage for Web Applications
(http://diveinto.html5doctor.com/storage.html)



## BEYOND NAMED KEY-VALUE PAIRS: COMPETING VISIONS
While the past is littered with **hacks** and **workarounds**, the present condition of HTML5 Storage is surprisingly rosy. A new API has been **standardized** and implemented across all major browsers, platforms, and devices. As a web developer, that’s just not something you see every day, is it? But there is more to life than “5 megabytes of named key/value pairs,” and the future of persistent **local storage** is… how shall I put it… well, there are *competing* visions.
One vision is an acronym that you probably know already: **SQL**. In 2007, Google launched Gears, an *oen* source cross-browser plugin which included an embedded database based on SQLite. This early prototype later influenced the creation of the Web SQL Database specification. 
The **Web SQL Database** specification has been implemented by four browsers and platforms.
Of course, if you’ve used more than one database product in your life, you are aware that “SQL” is more of a marketing term than a hard-and-fast standard. (Some would say the same of “HTML5,” but never mind that.) Sure, there is an actual SQL specification (it’s called SQL-92), but there is no database server in the world that conforms to that and only that specification. 
#### There’s 
+ Oracle’s SQL
+ Microsoft’s SQL
+ MySQL’s SQL 
+ PostgreSQL’s SQL, and SQLite’s SQL
 Indeed, each of these products adds new SQL features over time, so even saying “SQLite’s SQL” is not sufficient to pin down exactly what you’re talking about. You need to say “the version of SQL that shipped with SQLite version X.Y.Z.”

### The Web SQL Database specification:
This specification has reached an impasse: all interested *implementors* have used the same SQL backend (Sqlite), but we need multiple independent implementations to proceed along a standardisation path. Until another implementor is interested in implementing this spec, the description of the SQL dialect has been left as simply a reference to Sqlite, which isn't acceptable for a standard.
It is against this backdrop that I will introduce you to another competing vision for advanced, persistent, local storage for web applications: the Indexed Database API, formerly known as **“WebSimpleDB,”** now affectionately known as **“IndexedDB.”**
The Indexed Database API exposes what’s called an object store. An object store shares many concepts with a SQL database. There are **databases** with **records,** and each record has a set number of **fields.** Each field has a specific *datatype*, which is defined when the database is created. You can select a subset of records, then enumerate them with a “cursor.” Changes to the object store are handled within *“transactions.”*

