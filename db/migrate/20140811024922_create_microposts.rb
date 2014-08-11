class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :club_id
      t.integer :user_id

      t.timestamps
    end
    add_index :microposts, [:club_id, :user_id, :created_at]
  end
end