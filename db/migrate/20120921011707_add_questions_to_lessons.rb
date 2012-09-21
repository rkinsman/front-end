class AddQuestionsToLessons < ActiveRecord::Migration
  def up
    change_table :questions do |t|
      t.integer :lesson_id
    end
  end

  def down
    remove_column :users, :lesson_id
  end
end
