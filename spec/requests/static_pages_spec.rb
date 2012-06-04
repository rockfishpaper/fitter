require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
  	
    it "should have the content 'Fitter App'" do
      visit root_path
      page.should have_selector('h1', text: 'Fitter App')
    end

    it "should have the base title 'Fitter App'" do
      visit root_path
      page.should have_selector('title', text: "Fitter App")
    end
    
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: '| Home')
    end

  end

  describe "Help page" do
  	
    it "should have the content 'Help'" do
  	  visit help_path
  	  page.should have_selector('h1', text: 'Help')
  	end
    
    it "should have the right title 'Help'" do
      visit help_path
      page.should have_selector('title', text: "Fitter App | Help")
    end
    
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title 'About Us'" do
      visit about_path
      page.should have_selector('title', text: "Fitter App | About Us")
    end

  end
  
  describe "Contact page" do
  
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end
    
    it "should have the right title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Fitter App | Contact")
    end
  end

end
