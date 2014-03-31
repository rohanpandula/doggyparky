require 'spec_helper'

feature 'make an account for a k9 park social media site', %Q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
  } do

    # Acceptance Criteria:
    # *An owner must specify their first name, last name, email address, and dog's name.
    # *Upon adding my entry, I can see a list of other registered dog owners.
    # *An owner's full_name can be requested. Hint: This will require an instance method

    scenario 'enter all valid registration information' do
      prev_count = Owner.count
      visit '/owners/new'
      fill_in 'First Name',
        with: 'Rohan'
      fill_in 'Last Name',
        with: 'Pandula'
      fill_in 'Email',
        with: 'rohan@pan.com'
      fill_in 'Dog',
        with: 'Frankysaurus'
      click_button 'Register'

      expect(page).to have_content('Congrats, YOU DID IT!')
      expect(Owner.count).to eql(prev_count + 1)
    end


    scenario 'submit registration information without required fields'

  end
