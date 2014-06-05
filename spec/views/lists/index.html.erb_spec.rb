require 'spec_helper'

describe "lists/index" do

  include Devise::TestHelpers
  before do
    @user = User.create! valid_session
    sign_in @user
  end


  let(:valid_session) { {  name: "Matt",
                           email: "matt#{(1...1000).to_a.sample}@spah.com",
                           password: '12345678',
                           password_confirmation: '12345678',
                            } }





  before(:each) do
    assign(:lists, [
      stub_model(List,
        :store => "Store",
        :description => "MyText",
        :user_id => 1
      ),
      stub_model(List,
        :store => "Store",
        :description => "MyText",
        :user_id => 2
      )
    ])
  end

  # changed because I don't render user id's
  it "renders a list of lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
