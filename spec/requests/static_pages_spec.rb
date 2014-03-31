require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/'
      page.should have_content('Home')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/about'
      page.should have_content('About')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/help'
      page.should have_content('Help')
    end
  end

end
