# As a User
# So that I can see the bookmarks I saved
# I want to see a list of bookmarks
feature '1. Viewing bookmarks' do
  scenario '1.1 Visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
  scenario '1.2 Viewing the bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "google.com"
  end
end
