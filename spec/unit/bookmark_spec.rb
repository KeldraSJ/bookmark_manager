require 'bookmark'

describe 'Bookmark' do
  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.instagram.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.twitter.com')
      expect(bookmarks).to include('http://www.instagram.com')
    end
  end

  describe '#create' do 
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.youtube.com')
      expect(Bookmark.all).to include 'http://www.youtube.com'
    end
  end 
end
