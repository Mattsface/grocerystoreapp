require 'spec_helper'

describe "lists/new" do

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

=begin

This is broken because of this entry in my controller..
  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id

  that last line is overriding user_id to 0, bad design in my part.. 

=end
  before(:each) do
    assign(:list, stub_model(List,
      :store => "MyString",
      :description => "MyText",
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lists_path, "post" do
      assert_select "input#list_store[name=?]", "list[store]"
      assert_select "textarea#list_description[name=?]", "list[description]"
    end
  end

end
