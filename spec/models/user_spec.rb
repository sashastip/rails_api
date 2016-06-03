require 'rails_helper'

RSpec.describe User, type: :model do
  feature 'sign_in' do 
    let!(:user) { FactoryGirl.create(:user) }

    scenario 'valid?' do 
      visit('/users/sign_in')
      fill_in('Email', with: user.email)
      fill_in('Password', with: user.password)
      click_button('Log in')
      expect(page).to have_content 'Signed in successfully'
    end
  end
end
