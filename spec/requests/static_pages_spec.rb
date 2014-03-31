require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'e-Mondai beta'" do
      visit '/static_pages/home'
      page.should have_content('e-Mondai beta')
    end
  end
end
