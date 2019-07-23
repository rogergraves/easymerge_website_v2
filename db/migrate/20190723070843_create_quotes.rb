class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :description
      t.string :author_name
      t.integer :order

      t.timestamps
    end
  end
end
