class AddColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image_name, :string
  end
end
