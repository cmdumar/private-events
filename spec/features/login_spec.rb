describe 'Login process', type: :feature do
  before :each do
    @user = User.create(email: 'user@example.com', username: 'user1')
  end

  it 'Login to the app' do
    visit '/login'
    fill_in 'username', with: @user.username
    click_button 'Login'
    visit '/users/1'
    expect(page).to have_content "Hello, #{@user.username}"
  end

  it 'Login to the app' do
    visit '/login'
    fill_in 'username', with: ''
    click_button 'Login'
    expect(current_path).to eq('/login')
  end
end
