class Project < ActiveRecord::Base

	validates :projectname,:presence => true

	has_many :projectusers
	has_many :users , :through => :projectusers



	def self.search(search)
	  if search
	    where('projectname LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end


end
