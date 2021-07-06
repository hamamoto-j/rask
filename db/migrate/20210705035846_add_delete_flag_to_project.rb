class AddDeleteFlagToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :delete_flag, :boolean, :default => false
  end
end
