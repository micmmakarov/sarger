class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.text :note

      t.timestamps
    end
  end
end
