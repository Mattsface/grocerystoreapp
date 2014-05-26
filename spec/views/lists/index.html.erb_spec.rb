require 'spec_helper'

describe "lists/index" do
  before(:each) do
    assign(:lists, [
      stub_model(List,
        :store => "Store",
        :description => "MyText",
        :items => 1,
        :price => 1.5,
        :user_id => 2
      ),
      stub_model(List,
        :store => "Store",
        :description => "MyText",
        :items => 1,
        :price => 1.5,
        :user_id => 2
      )
    ])
  end

  it "renders a list of lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
