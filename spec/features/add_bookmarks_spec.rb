feature 'Adding bookmarks' do 
  scenario 'Add a bookmark to bookmark manager' do
    visit('/bookmarks/add')
    fill_in :url, with: 'http://www.youtube.com'
    click_button 'Add Bookmark'

    expect(page).to have_content 'http://www.youtube.com'
  end
end
