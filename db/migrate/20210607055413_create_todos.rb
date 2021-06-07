class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
