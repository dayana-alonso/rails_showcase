class Visitor < ApplicationRecord
	has_many :cinemas
	validates :name, :visitor_cardnumber, presence: true
end
