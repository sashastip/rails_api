require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { FactoryGirl.create(:article) }

  subject { article }
  
  context 'validations?' do 
    it { should be_valid }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
