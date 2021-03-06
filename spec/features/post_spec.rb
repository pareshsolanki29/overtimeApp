require 'rails_helper'

describe 'navigate' do

	describe 'index' do
      
      it 'can be reached succesfully' do
      	visit posts_path
      	expect(page.status_code).to eq(200)
      
      end 

      it 'has title of Posts' do
      	visit posts_path
      	expect(page).to have_content(/Posts/)
      
      end 
	end

		 describe 'creation ' do
		 	it 'has a new form which can be reached' do
		 		visit new_post_path
		 		expect(page.status_code).to eq(200)
		 	end 
		 	it 'can be created from new form page' do
		 		visit new_post_path
		 		fill_in 'post[date]', with: Date.today
		 		fill_in 'post[rationale]', with: "Some rationale"

		 		click_on "Save"
		 		expect(page).to have_content("Some rationale")
		 	end 
		 end 
end