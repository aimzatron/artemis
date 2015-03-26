class AddStatusUpdateToDiaryEntries < ActiveRecord::Migration
  def change
    add_column :diary_entries, :status_update, :string
  end
end
