# As a User
# So that I can add items to the list
# I want to add new bookmarks to the list
feature '2. Adding bookmarks' do
  scenario '2.1 Adding a bookmark' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://www.facebook.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.facebook.com'
  end
end
