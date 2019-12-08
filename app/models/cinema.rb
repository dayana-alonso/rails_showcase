class Cinema < ApplicationRecord
  belongs_to :visitor
  validates :name, :visitor_cardnumber, presence: true
end
