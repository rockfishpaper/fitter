require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
  	
    it "should have the content 'Fitter App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Fitter App')
    end

    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Fitter | Home")
    end

  end

  describe "Help page" do
  	
    it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', :text => 'Help')
  	end
    
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Fitter | Help")
    end
    
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Fitter | About")
    end

  end

end
