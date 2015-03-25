class AddUuidToDiaryEntry < ActiveRecord::Migration
  def change
    add_column :diary_entries, :uuid, :string
  end
end
