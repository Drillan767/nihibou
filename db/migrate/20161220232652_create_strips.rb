class CreateStrips < ActiveRecord::Migration[5.0]
  def change
    create_table :strips do |t|
      t.string :image
      t.string :titre
      t.integer :strip_number
      t.text :description

      t.timestamps
    end
  end
end
