class User < ActiveRecord::Base

	validates :username,:presence => true

	has_many :projectusers
	has_many :projects , :through => :projectusers
end
