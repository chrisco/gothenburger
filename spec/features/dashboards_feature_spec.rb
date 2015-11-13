require 'rails_helper'

RSpec.feature 'Hello World' do

  context 'when visitors vist the root path' do
    scenario 'they see the dashboard welcome page and content' do
      visit '/'
      expect(page).to have_content 'Welcome to the Gothenburger Admin Dashboard'
    end
  end
end
