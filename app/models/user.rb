class User < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :medium => "180x180>", :thumb => "100x100>" }, :default_url =>"/assets/default.jpg"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	has_and_belongs_to_many :skills
	has_many :questions
	has_many :answers
	has_many :jobs
	has_many :publications

end
