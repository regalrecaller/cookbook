require 'spec_helper'

describe "Static Pages" do

	let (:base_title) {"Cookbook Sample App"}

  	describe "Home Page" do
    	it "should have the content 'Home'" do
    	  visit '/static_pages/home'
		  expect(page).to have_content('Home')
    	end
	
		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title}")
		end
  		
		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end
  	describe "Help Page" do
  		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		
		it "should have the base title" do
      		visit '/static_pages/help'
      		expect(page).to have_title("#{base_title}")
    	end	
  		
		it "should not have a custom page title" do
			visit '/static_pages/help'
			expect(page).not_to have_title('| Help')
		end
	end
  	describe "About Page" do
  		it "should have the content 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
		
		it "should have the base title" do
      		visit '/static_pages/about'
      		expect(page).to have_title("#{base_title}")
    	end
  		
		it "should not have a custom page title" do
			visit '/static_pages/about'
			expect(page).not_to have_title('| About')
		end
	end
  	describe "Contact Page" do
  		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end
		
		it "should have the base title" do
   			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title}")
		end	
  	
		it "should not have a custom page title" do
			visit '/static_pages/contact'
			expect(page).not_to have_title('| Contact')
		end
	end
end
