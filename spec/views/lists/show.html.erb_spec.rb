require 'spec_helper'

describe "lists/show" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :store => "Store",
      :description => "MyText",

    ))
  end

=begin
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id

  that last line is overriding user_id to 0, bad design in my part.. 
=end


  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Store/)
    rendered.should match(/MyText/)
  end
end
