feature 'Viewing index' do
  scenario 'User can view index' do
    visit('/')
    expect(page).to have_content 'Welcome to your Bookmark Manager'
  end
end