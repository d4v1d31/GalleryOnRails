require 'spec_helper'

describe "permissions/new" do
  before(:each) do
    assign(:permission, stub_model(Permission,
      :name => "MyString",
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", permissions_path, "post" do
      assert_select "input#permission_name[name=?]", "permission[name]"
      assert_select "input#permission_value[name=?]", "permission[value]"
    end
  end
end
