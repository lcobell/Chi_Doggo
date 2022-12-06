class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :walker, null: false, foreign_key: { to_table: :users }
      t.boolean :complete

      t.timestamps
    end
  end
end
