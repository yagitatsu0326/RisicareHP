class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
	  t.integer "admin_id"
	  t.string "title"
      t.string "body"
	  t.string "image_id"
      t.timestamps
    end
  end
end
