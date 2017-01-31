class Contact < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :email_id, presence: true
	validates :phone, presence: true
	validates :subject, presence: true
	validates :requirement, presence: true
	validates :user_id, presence: true
end
