class CreateGains < ActiveRecord::Migration
  def change
    create_table :gains do |t|
      t.integer :user_id
      t.integer :task_id
      t.text :notice
      t.boolean :status

      t.timestamps
    end
  end
end
