require 'spec_helper'

describe "menus/new" do
  before(:each) do
    assign(:menu, stub_model(Menu,
      :name => "MyString",
      :restaurant => nil,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => menus_path, :method => "post" do
      assert_select "input#menu_name", :name => "menu[name]"
      assert_select "input#menu_restaurant", :name => "menu[restaurant]"
      assert_select "textarea#menu_content", :name => "menu[content]"
    end
  end
end
