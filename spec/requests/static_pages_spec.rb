require 'spec_helper'

describe "StaticPages" do


  #describe "GET /static_pages" do
   # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #  get static_pages_index_path
     # response.status.should be(200)
    #end
  #end

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }


  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

      it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', 
        :text => " | Help")
    end
  end

  describe "Home page" do
  	it "should have the h1 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text => 'Sample App')
  	end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', 
        :text => "#{base_title}")
    end

    it "should hae a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => 'Home')
    end
  end

describe "About page" do
  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('h1', :text => 'About Us')
  end 


    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', 
        :text => " | About")
    end
end

describe "Contact page" do
  it "should have the selector 'Contact'" do
    visit '/static_pages/contact'
    page.should have_selector('h1', :text => 'Contact')
  end 


    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', 
        :text => " | Contact")
    end
end

end
