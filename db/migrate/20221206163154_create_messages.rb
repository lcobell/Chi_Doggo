class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users }, index: true
      t.references :recipient, null: false, foreign_key: { to_table: :users }, index: true
      t.text :content
      t.references :walk, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
