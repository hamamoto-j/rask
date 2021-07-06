class AddDeleteFlagToTodo < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :delete_flag, :boolean, :default => false
  end
end
