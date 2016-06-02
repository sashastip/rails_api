require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let(:note) { FactoryGirl.create(:note) }

  subject { note }

end
