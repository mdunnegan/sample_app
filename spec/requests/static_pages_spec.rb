require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/help'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About Us page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/about'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Us')
    end
  end

  describe "Contacts" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/contacts'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/contacts'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/contacts'
      expect(page).not_to have_title('| Contacts')
    end
  end
end