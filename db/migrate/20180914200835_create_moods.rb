class CreateMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :moods do |t|
      t.integer :rate
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
