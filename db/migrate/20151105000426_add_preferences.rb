class AddPreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.integer :tag_id

      t.timestamps
    end

    drop_table :tags_users
  end
end
