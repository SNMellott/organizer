class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :information
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.references :task_type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :tasks, [:user_id, :created_at]
  end
end
