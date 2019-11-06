require 'pg'

p 'Setting up test database...'

connection = PG.connect(dbname: 'bookmark_manager_test')

# clear the bookmarks TABLE
connection.exec("TRUNCATE.bookmarks;")
