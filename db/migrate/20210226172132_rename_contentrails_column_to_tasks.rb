class RenameContentrailsColumnToTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :contentrails, :content
  end
end
