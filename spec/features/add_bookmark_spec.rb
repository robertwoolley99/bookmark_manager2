feature 'Adding bookmarks' do
  scenario 'A user can add a bookmark' do
    visit ('/bookmarks/new')
    fill_in 'new_bookmark',with: 'http://www.tfl.gov.uk'
    fill_in('title', with: 'Tfl Bookmark')
    click_button 'OK'
#    save_and_open_page
    expect(page).to have_link('Tfl Bookmark', href: 'http://www.tfl.gov.uk')
  end
end
