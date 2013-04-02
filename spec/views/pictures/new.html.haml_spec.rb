require 'spec_helper'

describe "pictures/new" do
  before(:each) do
    assign(:picture, stub_model(Picture,
      :description => "MyText",
      :path => "MyString"
    ).as_new_record)
  end

  it "renders new picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pictures_path, "post" do
      assert_select "textarea#picture_description[name=?]", "picture[description]"
      assert_select "input#picture_path[name=?]", "picture[path]"
    end
  end
end
