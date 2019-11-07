feature 'Adding bookmarks' do
  scenario 'A user can add a bookmark' do
    visit ('/bookmarks/new')
    fill_in 'new_bookmark',with: 'http://www.tfl.gov.uk'
    click_button 'OK'
    expect(page).to have_content 'http://www.tfl.gov.uk'
  end
end
