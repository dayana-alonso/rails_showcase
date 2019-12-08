class CreateCinemas < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.references :visitor, null: false, foreign_key: true
      t.string :cinema_name
      t.string :address
      t.string :postcode
      t.integer :telephone

      t.timestamps
    end
  end
end
