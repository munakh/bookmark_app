# bookmark_app

User Stories
------------
```
As a User
So that I can see the bookmarks I saved
I want to see a list of bookmarks

As a User
So that I can add items to the list
I want to add new bookmarks to the list

As a User
So that I can remove items from the list
I want to delete bookmarks from the list

As a User
So that I can update items on the list
I want to update bookmarks on the list

As a User
So that I can add more information about a bookmark
I want to comment on a bookmark

As a User
So that I can organise my bookmarks
I want to tag bookmarks into categories

As a User
So that I can see bookmarks by category
I want to filter bookmarks by tag

As a User
So that my bookmarks are private
I want to be the only one accessing my bookmarks
```

Database Instructions
---------------------
```
Steps
1. brew install postgresql
2. brew services start postgresql
3. psql postgres
4. CREATE DATABASE bookmark_manager;
5. \c bookmark_manager
6. mysql < 01_create_bookmarks_table.sql (found in db/migrations)
```
