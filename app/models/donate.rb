class Donate < ActiveRecord::Base
	validates :name, presence: true
	validates :email_id, presence: true
	validates :phone, presence: true
	validates :amount, presence: true
end
