require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
  	
    it "should have the content 'Fitter App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Fitter App')
    end

    it "should have the base title 'Fitter App'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Fitter App")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help page" do
  	
    it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', :text => 'Help')
  	end
    
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Fitter App | Help")
    end
    
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Fitter App | About")
    end

  end
  
  describe "Contact page" do
  
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the right title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "Fitter App | Contact")
    end
  end

end
