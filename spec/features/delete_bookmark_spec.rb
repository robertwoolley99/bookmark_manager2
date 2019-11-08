require 'pg'

feature 'Deleting Bookmarks' do
  scenario 'A user can delete bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

    visit('/bookmarks/delete')
    choose 'Google'
    click_button 'OK'
    expect(page).to not_have('Google')
  end
end
