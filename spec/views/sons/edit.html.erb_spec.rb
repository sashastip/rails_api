require 'rails_helper'

RSpec.describe "sons/edit", type: :view do
  before(:each) do
    @son = assign(:son, Son.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit son form" do
    render

    assert_select "form[action=?][method=?]", son_path(@son), "post" do

      assert_select "input#son_name[name=?]", "son[name]"
    end
  end
end
