class Father < ActiveRecord::Base
  has_many :sons

  accepts_nested_attributes_for :sons
end
