class Publication < ActiveRecord::Base

	belongs_to :user
	has_and_belongs_to_many :skills
	has_attached_file :document, styles: {thumbnail: "60x60#"}
  	validates_attachment :document, content_type: { content_type: "application/pdf" }

end
