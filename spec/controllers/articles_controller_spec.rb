require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  login_user

  let(:article) { FactoryGirl.create(:article) }

  subject { article }
end
