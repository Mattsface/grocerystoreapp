require 'spec_helper'

describe "lists/edit" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :store => "MyString",
      :description => "MyText",
      :items => 1,
      :price => 1.5,
      :user_id => 1
    ))
  end

  it "renders the edit list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", list_path(@list), "post" do
      assert_select "input#list_store[name=?]", "list[store]"
      assert_select "textarea#list_description[name=?]", "list[description]"
      assert_select "input#list_items[name=?]", "list[items]"
      assert_select "input#list_price[name=?]", "list[price]"
      assert_select "input#list_user_id[name=?]", "list[user_id]"
    end
  end
end
