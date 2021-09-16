feature 'Viewing bookmarks' do
  scenario 'view a list of bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.twitter.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.instagram.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.instagram.com'
  end
end
