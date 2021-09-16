feature 'Viewing bookmarks' do
  scenario 'view a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end
