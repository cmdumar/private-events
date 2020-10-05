describe 'Sign up process', type: :feature do
  it 'Sign up a new user' do
    visit new_user_path
    fill_in 'user[username]', with: 'user8'
    fill_in 'user[email]', with: 'user7@example.com'
    click_button 'Sign up'
    expect(page).to have_content('user8')
  end

  it 'Invalid inputs' do
    visit new_user_path
    fill_in 'user[username]', with: 'user'
    fill_in 'user[email]', with: ''
    click_button 'Sign up'
    expect(page).to have_content('5 characters')
  end
end
