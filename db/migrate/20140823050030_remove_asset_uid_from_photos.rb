class RemoveAssetUidFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :asset_name, :string
  end
end
