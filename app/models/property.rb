class Property < ActiveRecord::Base
  has_many :portfolios
  has_many :sellers, through: :portfolios
  belongs_to :user
end
