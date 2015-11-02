class Dietplan < ActiveRecord::Base
  has_many :recipy
  has_many :step
  belongs_to :user
end
