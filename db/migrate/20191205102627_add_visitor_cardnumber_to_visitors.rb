class AddVisitorCardnumberToVisitors < ActiveRecord::Migration[6.0]
  def change
    add_column :visitors, :visitor_cardnumber, :string
  end
end
