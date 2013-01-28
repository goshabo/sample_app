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


 # chapter 5.3.1 streamlined tests for Home page
  subject { page }
  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', text: 'Sample App')}
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', :text => 'Home')}

  end


# the following tests are not prettified
  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path # '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

      it "should have the right title" do
      visit help_path # '/static_pages/help'
      page.should have_selector('title', 
        :text => " | Help")
    end
  end

describe "About page" do
  it "should have the content 'About Us'" do
    visit about_path #'/static_pages/about'
    page.should have_selector('h1', :text => 'About Us')
  end 


    it "should have the right title" do
      visit about_path #'/static_pages/about'
      page.should have_selector('title', 
        :text => " | About")
    end
end

describe "Contact page" do
  it "should have the selector 'Contact'" do
    visit contact_path #'/static_pages/contact'
    page.should have_selector('h1', :text => 'Contact')
  end 


    it "should have the right title" do
      visit contact_path #'/static_pages/contact'
      page.should have_selector('title', 
        text: full_title('Contact'))
    end
end

end
