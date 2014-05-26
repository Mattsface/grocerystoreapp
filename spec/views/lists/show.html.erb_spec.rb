require 'spec_helper'

describe "lists/show" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :store => "Store",
      :description => "MyText",
      :items => 1,
      :price => 1.5,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Store/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
  end
end
