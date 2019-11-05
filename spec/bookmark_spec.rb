require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }
  context do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    describe 'all' do
      # test data
      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.google.com');")

      it 'returns a list of all bookmarks' do
        expect(bookmark.all).to include "http://www.makersacademy.com"
        expect(bookmark.all).to include "http://www.twitter.com"
        expect(bookmark.all).to include "http://www.google.com"
      end
    end

    describe 'add' do
      it 'adds a new bookmark' do
        bookmark.add(url: 'http://www.facebook.com')
        expect(bookmark.all).to include "http://www.facebook.com"
      end
    end
  end
end
