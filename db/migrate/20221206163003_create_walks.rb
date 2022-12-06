class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.references :dog, null: false, foreign_key: true, index: true
      t.references :walker, null: false, foreign_key: { to_table: :users }, index: true
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
