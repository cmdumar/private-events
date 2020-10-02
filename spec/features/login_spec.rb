describe "Login process", type: :feature do
  before :each do
    @user = User.create(email: 'user@example.com', username: 'user')
  end

  it "Login to the app" do
    visit '/login'
      fill_in 'username', with: @user.username
      click_button 'Login'
      visit '/users/1'
      expect(page).to have_content "Hello, #{@user.username}"
  end
end