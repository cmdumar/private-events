describe "Event creation process", type: :feature do
  before :each do
    @user = User.create(email: 'user@example.com', username: 'user')
  end

  it "creates an event" do
    visit '/login'
      fill_in 'username', with: @user.username
      click_button 'Login'
    visit new_event_path
      fill_in 'event[title]', with: 'Test event'
      fill_in 'event[description]', with: 'This event is a test. This event is a test. This event is a test. This event is a test.'
      fill_in 'event[date]', with: Date.today + 2
      click_button 'Create event'
      expect(page).to have_content 'Test event'
  end

  it "invalid inputs" do
    visit '/login'
      fill_in 'username', with: @user.username
      click_button 'Login'
    visit new_event_path
      fill_in 'event[title]', with: 'hi'
      fill_in 'event[description]', with: ''
      fill_in 'event[date]', with: 123
      click_button 'Create event'
      expect(page).to have_content("Description can't be blank")
  end
end