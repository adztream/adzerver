class ChangeTypeNameToImageType < ActiveRecord::Migration
  def up
    rename_column :creatives, :type, :image_type
  end

  def down
    rename_column :creatives, :image_type, :type
  end
end
