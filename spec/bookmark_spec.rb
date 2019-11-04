require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  it 'prints itself' do
    expect(bookmark.all).to include "google.com"
  end
end
