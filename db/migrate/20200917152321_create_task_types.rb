class CreateTaskTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :task_types do |t|
      t.string :typestitle

      t.timestamps
    end
  end
end
