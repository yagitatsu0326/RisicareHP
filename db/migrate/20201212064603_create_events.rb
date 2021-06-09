class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :admin_id
      t.string :title
      t.string :body
      t.string :place
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
