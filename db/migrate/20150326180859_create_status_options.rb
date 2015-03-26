class CreateStatusOptions < ActiveRecord::Migration
  def change
    create_table :status_options do |t|
      t.string :name
      t.integer :status_category_id

      t.timestamps
    end
  end
end
