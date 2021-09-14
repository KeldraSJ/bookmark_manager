require 'bookmark'

describe 'Bookmark' do
  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('https://www.google.com')
      expect(bookmarks).to include('https://www.twitter.com')
    end
  end
end
