class CreateStatusCatgeories < ActiveRecord::Migration
  def change
    create_table :status_catgeories do |t|
      t.string :name

      t.timestamps
    end
  end
end
