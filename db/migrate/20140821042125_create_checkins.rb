class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :title
      t.belongs_to :club, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
