require 'rails_helper'

RSpec.describe "sons/index", type: :view do
  before(:each) do
    assign(:sons, [
      Son.create!(
        :name => "Name"
      ),
      Son.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of sons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
