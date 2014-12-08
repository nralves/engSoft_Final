class User < ActiveRecord::Base

	has_and_belongs_to_many :skills
	has_many :questions
	has_many :answers
	has_many :jobs
	has_many :publications

end
