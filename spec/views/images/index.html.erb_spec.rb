require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :cover => "Cover"
      ),
      Image.create!(
        :cover => "Cover"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
  end
end
