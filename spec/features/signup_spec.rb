describe "Sign up process", type: :feature do
  it "Sign up a new user" do
    visit new_user_path
      fill_in 'user[username]', with: 'user1'
      fill_in 'user[email]', with: 'user@example.com'
      click_button 'Sign up'
      expect(current_path).to eq('/users')
  end
end