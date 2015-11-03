class Dietplan < ActiveRecord::Base
  has_and_belongs_to_many :recipies
  has_and_belongs_to_many :steps
  belongs_to :user

  accepts_nested_attributes_for :recipies, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
