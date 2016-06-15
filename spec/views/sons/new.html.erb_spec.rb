require 'rails_helper'

RSpec.describe "sons/new", type: :view do
  before(:each) do
    assign(:son, Son.new(
      :name => "MyString"
    ))
  end

  it "renders new son form" do
    render

    assert_select "form[action=?][method=?]", sons_path, "post" do

      assert_select "input#son_name[name=?]", "son[name]"
    end
  end
end
