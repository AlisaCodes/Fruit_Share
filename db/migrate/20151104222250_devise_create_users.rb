class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.string :name
      t.string :location

      t.timestamps null: false
    end

    create_table(:items) do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.integer :user_id
    end

    create_table(:tags) do |t|
      t.string :name
    end

    create_table(:items_tags) do |t|
      t.integer :item_id
      t.integer :tag_id
    end

    create_table(:comments) do |t|
      t.string :body
    end

    create_table(:posts) do |t|
      t.string :title
      t.string :body
    end

    create_table(:comments_posts) do |t|
      t.integer :comment_id
      t.integer :post_id
    end

    create_table(:tags_users) do |t|
      t.integer :tag_id
      t.integer :user_id
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
