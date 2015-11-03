class Step < ActiveRecord::Base
	has_and_belongs_to_many :dietplans
end
