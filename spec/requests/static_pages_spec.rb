require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Messages'" do
      visit '/static_pages/home'
      expect(page).to have_content('Messages')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Welcome to Messages")
    end

    it "should have a custom page title" do
      visit '/static_pages/home'
      expect(page).to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Welcome to Messages | Help")
    end

  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Welcome to Messages | Help")
    end
  end

end