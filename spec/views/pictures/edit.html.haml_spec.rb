require 'spec_helper'

describe "pictures/edit" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :description => "MyText",
      :path => "MyString"
    ))
  end

  it "renders the edit picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do
      assert_select "textarea#picture_description[name=?]", "picture[description]"
      assert_select "input#picture_path[name=?]", "picture[path]"
    end
  end
end
