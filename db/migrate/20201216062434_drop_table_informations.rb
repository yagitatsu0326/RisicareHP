class DropTableInformations < ActiveRecord::Migration[5.2]
  def change
  	drop_table :table_informations
  end
end
