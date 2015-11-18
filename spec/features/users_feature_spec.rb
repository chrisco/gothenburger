require 'rails_helper'

RSpec.feature 'Sign Up and Sign In' do

  xcontext 'Sign Up' do

    before do
      visit '/'
    end

    scenario 'visitors with gothenburger.com email addresses can Sign Up' do
      click_link 'Sign up'
      fill_in :user_email, with: 'foo@gothenburger.com'
      fill_in :user_password, with: 'password'
      fill_in :user_password_confirmation, with: 'password'
      click_button 'Sign up'
      expect(page).to have_content 'Sign out'
    end

    scenario 'visitors WITHOUT gothenburger.com email addresses CAN\'T Sign Up' do
      click_link 'Sign up'
      fill_in :user_email, with: 'foo@not-gothenburger.com'
      fill_in :user_password, with: 'password'
      fill_in :user_password_confirmation, with: 'password'
      click_button 'Sign up'
      expect(page).not_to have_content 'Sign out'
      expect(page).to have_content 'Email is invalid'
    end
  end

  xcontext 'Sign In' do

    before do
      visit '/'
      @user = FactoryGirl.create(:user)
    end

    scenario 'Sign In with valid credentials works' do
      click_button 'Log in'
      fill_in :user_email, with: 'factory.girl@gothenburger.com'
      fill_in :user_password, with: 'password'
      click_button 'Log in'
      expect(page).to have_content 'Sign out'
    end

    scenario 'Sign In with invalid credentials fails' do
      click_button 'Log in'
      fill_in :user_email, with: 'factory.girl@gothenburger.com'
      fill_in :user_password, with: 'wrong_password'
      click_button 'Log in'
      # binding.pry
      expect(page).not_to have_content 'Sign out'
      expect(page).to have_content 'Invalid email or password'
    end
  end
end
