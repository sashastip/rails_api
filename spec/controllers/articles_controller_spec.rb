require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  login_user

  it "current_user?" do 
    expect(subject.current_user).to_not eq(nil)
  end

  let(:article) { FactoryGirl.create(:article) }
  

  describe "GET index" do 
    it "renders the index template" do 
      get :index 
      expect(response).to render_template('index')
    end
  end
end
