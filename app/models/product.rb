class Product < ActiveRecord::Base
  attr_accessible :desc, :name
  validates :name, :presence => true
  validates :desc, :presence => true
  has_many :algoproduct
end
