require 'rails_helper'

RSpec.describe "pictures/index", type: :view do
  before(:each) do
    assign(:pictures, [
      Picture.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Picture.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
