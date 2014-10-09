class Project < ActiveRecord::Base

	validates :projectname,:presence => true

	has_many :projectusers
	has_many :users , :through => :projectusers
end
