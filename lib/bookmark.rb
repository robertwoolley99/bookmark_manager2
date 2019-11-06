require 'pg'

class Bookmark
  def self.all
  connection = PG.connect(dbname: 'bookmark_manager')
  result = connection.exec("SELECT * FROM bookmarks;")
  result.map { |bookmarks| bookmarks['url'] }
  end
end
