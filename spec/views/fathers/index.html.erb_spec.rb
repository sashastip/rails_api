require 'rails_helper'

RSpec.describe "fathers/index", type: :view do
  before(:each) do
    assign(:fathers, [
      Father.create!(
        :name => "Name"
      ),
      Father.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of fathers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
