class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :year

      # added this after making 1 to M
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
