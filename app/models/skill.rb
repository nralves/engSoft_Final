class Skill < ActiveRecord::Base

	has_and_belongs_to_many :users
	has_and_belongs_to_many :questions
	has_and_belongs_to_many :jobs
	
end
