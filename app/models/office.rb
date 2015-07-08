class Office < ActiveRecord::Base
  belongs_to :workshop
  has_many :car_files
end
