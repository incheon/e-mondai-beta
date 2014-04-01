require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the h1 'e-Mondai'" do
      visit '/'
      page.should have_selector('h1', :text => 'e-Mondai beta')
    end

    it "should have the base title" do
      visit '/'
      page.should have_selector('title', :text => "eMondai beta")
    end

    it "should not have a custom page title" do
      visit '/'
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/help'
      page.should have_selector('title', :text => "eMondai beta | Help")
    end
  end

  describe "About page" do
    it "should have the h1 'About'" do
      visit '/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      visit '/about'
      page.should have_selector('title', :text => "eMondai beta | About")
    end
  end

end
