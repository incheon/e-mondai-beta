require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before {visit root_path}

    it { should have_selector('h1', :text => 'e-Mondai beta') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => "| Home") }
  end

  describe "Help page" do
    before {visit help_path}
    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title', :text => "| Help")
    end
  end

  describe "About page" do
    before {visit about_path}
    it "should have the h1 'About'" do
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      page.should have_selector('title', :text => "| About")
    end
  end

  describe "Contact page" do
    before {visit contact_path}
    it "should have the content 'Contact'" do
      page.should have_content('Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title', :text => "| Contact")
    end
  end

end
