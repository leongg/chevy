class CarFile < ActiveRecord::Base
  belongs_to :office
  belongs_to :car
end
