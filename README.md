# bookmark_manager



**User Story - with nouns and verbs:**

As a Web User

I want to look at a list of curated web bookmarks

So that I can visit websites which are useful to me.


Nouns/Adjectives:

Web User

List, Curated Web Bookmarks

Websites


Verbs

Look, Visit


Classes

User
Bookmark (Websites)


Methods

View

(Visit)

[Domain Model](https://github.com/robertwoolley99/bookmark_manager/tree/master/images/Domain_Model.png?raw=true)


Adding a bookmark:


As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to the Bookmark Manager.

# Database Issues

If you need to setup the datbase from scratch using postgresql do the following:

Connect to psql

Create the database using the psql command  `CREATE DATABASE bookmark__manager;`

Connect to the database using the pqsl command `\c bookmark_manager;`

Run the query we have saved in the file `01_create_bookmarks_table.sql`

There is a test database in `bookmark_manager_test` - rspec tests will use this.
