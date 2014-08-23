class RemoveAssetNameFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :asset_uid, :string
  end
end
