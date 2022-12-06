# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    enable_extension("citext")
    create_table :users do |t|
      ## Database authenticatable
      t.citext :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.citext :username
      t.boolean :sunday_morning
      t.boolean :sunday_afternoon
      t.boolean :sunday_night
      t.boolean :monday_morning
      t.boolean :monday_afternoon
      t.boolean :monday_night
      t.boolean :tuesday_morning
      t.boolean :tuesday_afternoon
      t.boolean :tuesday_night
      t.boolean :wednesday_morning
      t.boolean :wednesday_afternoon
      t.boolean :wednesday_night
      t.boolean :thursday_morning
      t.boolean :thursday_afternoon
      t.boolean :thursday_night
      t.boolean :friday_morning
      t.boolean :friday_afternoon
      t.boolean :friday_night
      t.boolean :saturday_morning
      t.boolean :saturday_afternoon
      t.boolean :saturday_night
      t.text :bio
      t.string :image
      t.string :neighborhood
      t.integer :walks_count, default: 0

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :username,              unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
