class CreateDiaryEntries < ActiveRecord::Migration
  def change
    create_table :diary_entries do |t|
      t.string :entry_text

      t.timestamps
    end
  end
end
