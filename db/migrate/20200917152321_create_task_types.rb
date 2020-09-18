class CreateTaskTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :task_types do |t|
      t.string :typestitle
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
