require 'rails_helper'

RSpec.describe 'user crud operations', type: :system do
  it 'checks for dublication' do
    visit "#{root_path}users/sign_up"
    fill_in 'Username', with: 'omar'
    fill_in 'Email', with: 'omar@ramo.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_button 'Sign Up'
    expect(page).to have_content('Username has already been taken')
  end

  it 'checks for user flow - sign in' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    expect(page).to have_content('Signed in successfully.')
  end

  it 'checks for user flow - sign out' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Log Out'
    expect(page).to have_content('Signed out successfully.')
  end

  it 'checks for user flow - wrong cred - password' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'Omar'
    fill_in 'Password', with: '1234567'
    click_button 'Log In'
    expect(page).to have_content('Invalid Login or password.')
  end

  it 'checks for user flow - wrong cred - username' do
    visit "#{root_path}users/sign_in"
    fill_in 'Username', with: 'chicken is good'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    expect(page).to have_content('Invalid Login or password.')
  end
end