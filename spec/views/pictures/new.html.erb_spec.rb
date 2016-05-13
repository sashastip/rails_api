require 'rails_helper'

RSpec.describe "pictures/new", type: :view do
  before(:each) do
    assign(:picture, Picture.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new picture form" do
    render

    assert_select "form[action=?][method=?]", pictures_path, "post" do

      assert_select "input#picture_name[name=?]", "picture[name]"

      assert_select "textarea#picture_description[name=?]", "picture[description]"
    end
  end
end
