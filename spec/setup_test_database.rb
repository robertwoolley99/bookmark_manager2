require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # clear the bookmarks TABLE
  connection.exec("TRUNCATE bookmarks;")
end
