class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :begin_time
      t.datetime :end_time
      t.string :display_name
      t.string :web_link

      t.timestamps
    end
  end
end
