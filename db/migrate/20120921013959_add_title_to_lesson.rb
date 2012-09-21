class AddTitleToLesson < ActiveRecord::Migration
  def up
    change_table :lessons do |t|
      t.string :title
    end
  end

  def down
    remove_column :questions, :title
  end
end
