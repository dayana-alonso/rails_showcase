class Cinema < ApplicationRecord
  belongs_to :visitor
  validates :cinema_name, :address, :postcode, :telephone, presence: true
end
