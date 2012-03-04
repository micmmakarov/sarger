class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.text :note
      t.integer :type
      t.integer :time

      t.timestamps
    end
  end
end
