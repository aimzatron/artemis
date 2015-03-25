class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :phrase
      t.integer :category_id

      t.timestamps
    end
  end
end
