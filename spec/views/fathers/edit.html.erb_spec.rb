require 'rails_helper'

RSpec.describe "fathers/edit", type: :view do
  before(:each) do
    @father = assign(:father, Father.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit father form" do
    render

    assert_select "form[action=?][method=?]", father_path(@father), "post" do

      assert_select "input#father_name[name=?]", "father[name]"
    end
  end
end
