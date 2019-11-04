require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  it 'returns a list of all bookmarks' do
    expect(bookmark.all).to include "http://www.makersacademy.com"
    expect(bookmark.all).to include "http://www.askjeeves.com"
    expect(bookmark.all).to include "http://www.twitter.com"
    expect(bookmark.all).to include "http://www.google.com"
  end
end
