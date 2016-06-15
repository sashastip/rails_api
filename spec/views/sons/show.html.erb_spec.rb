require 'rails_helper'

RSpec.describe "sons/show", type: :view do
  before(:each) do
    @son = assign(:son, Son.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
