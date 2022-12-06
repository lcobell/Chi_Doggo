class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.text :about
      t.string :image
      t.references :owner, null: false, foreign_key: { to_table: :users }
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
      t.string :neighborhood
      t.integer :walks_count, default: 0

      t.timestamps
    end
  end
end
