class AddCinemaIdToVisitors < ActiveRecord::Migration[6.0]
  def change
    add_column :visitors, :cinema_id, :bigint
  end
end
