class CreateGains < ActiveRecord::Migration
  def change
    create_table :gains do |t|
      t.boolean :status
      t.text :notice
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
