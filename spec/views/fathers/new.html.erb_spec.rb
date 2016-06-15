require 'rails_helper'

RSpec.describe "fathers/new", type: :view do
  before(:each) do
    assign(:father, Father.new(
      :name => "MyString"
    ))
  end

  it "renders new father form" do
    render

    assert_select "form[action=?][method=?]", fathers_path, "post" do

      assert_select "input#father_name[name=?]", "father[name]"
    end
  end
end
