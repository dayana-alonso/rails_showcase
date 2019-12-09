class Cinema < ApplicationRecord
  has_many :visitors
  validates :cinema_name, :address, :postcode, :telephone, presence: true
end
