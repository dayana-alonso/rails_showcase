class Visitor < ApplicationRecord
	belongs_to :cinema
	validates :name, :visitor_cardnumber, presence: true
end
