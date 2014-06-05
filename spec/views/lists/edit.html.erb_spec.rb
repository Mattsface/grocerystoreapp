require 'spec_helper'

describe "lists/edit" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :store => "MyString",
      :description => "MyText",
    ))
  end
=begin

This is broken because of this entry in my controller..
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id

  that last line is overriding user_id to 0, bad design in my part.. 

=end



  it "renders the edit list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", list_path(@list), "post" do
      assert_select "input#list_store[name=?]", "list[store]"
      assert_select "textarea#list_description[name=?]", "list[description]"
    end
  end
end
