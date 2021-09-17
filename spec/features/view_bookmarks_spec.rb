feature 'Viewing bookmarks' do
  scenario 'view a list of bookmarks' do

    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.twitter.com')
    Bookmark.create(url: 'http://www.instagram.com')

    visit('/bookmarks')

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.instagram.com'
  end
end
