class RemoveVisitorCardnumberFromVisitors < ActiveRecord::Migration[6.0]
  def change

    remove_column :visitors, :visitor_cardnumber, :integer
  end
end
