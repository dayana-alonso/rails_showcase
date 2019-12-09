class RemoveVisitorIdFromCinemas < ActiveRecord::Migration[6.0]
  def change

    remove_column :cinemas, :visitor_id, :bigint
  end
end
