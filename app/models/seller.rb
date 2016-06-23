class Seller < ActiveRecord::Base
  has_many :properties, through: :portfolio
  belongs_to :user
end
