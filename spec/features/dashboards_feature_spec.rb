require 'rails_helper'
# require 'pry'

# TODO: Fix and improve this test
# (need to make sign-up and sign-in pages first, I think)
RSpec.feature 'Login Required to View Dashboard' do

  context "when visitors (or non-loggined in Users) vist the new_user_session_path" do
    scenario 'they should be prompted to sign in or sign up to continue' do
      visit new_user_session_path
      # binding.pry
      expect(page).to have_content 'Forgot your password?'
    end
  end
end
