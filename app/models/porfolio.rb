class Porfolio < ActiveRecord::Base
  belongs_to :seller
  belongs_to :property
end
