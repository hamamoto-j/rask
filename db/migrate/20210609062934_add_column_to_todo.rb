class AddColumnToTodo < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :project_id, :integer
  end
end
