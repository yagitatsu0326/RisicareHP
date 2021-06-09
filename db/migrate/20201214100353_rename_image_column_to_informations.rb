class RenameImageColumnToInformations < ActiveRecord::Migration[5.2]
  def change
  	rename_column :informations, :image, :image_id
  end
end
