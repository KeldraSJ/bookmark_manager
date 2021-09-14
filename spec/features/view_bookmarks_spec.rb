feature 'Viewing bookmarks' do
  scenario 'view a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'https://www.google.com'
    expect(page).to have_content 'https://www.twitter.com'
  end
end