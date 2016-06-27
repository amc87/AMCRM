class Seller < ActiveRecord::Base
  has_many :portfolios
  has_many :properties, through: :portfolios
  belongs_to :user
end
