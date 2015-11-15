require 'rails_helper'

RSpec.feature 'Login Required' do

  context "when visitors (or non-loggined in Users) vist the root path" do
    scenario 'they should be prompted to sign in or sign up to continue' do
      visit '/'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end
end
