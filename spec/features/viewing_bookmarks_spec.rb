# As a User
# So that I can see the bookmarks I saved
# I want to see a list of bookmarks
feature '1. Viewing bookmarks' do

  scenario '1.1 Visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario '1.2 Viewing the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.twitter.com');")
    connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.google.com');")
    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http://www.google.com"
  end
end
