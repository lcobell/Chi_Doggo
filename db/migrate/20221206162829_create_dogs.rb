class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.text :about
      t.string :image
      t.references :owner, null: false, foreign_key: { to_table: :users }, index: true
      t.boolean :sunday_morning, default: false
      t.boolean :sunday_afternoon, default: false
      t.boolean :sunday_night, default: false
      t.boolean :monday_morning, default: false
      t.boolean :monday_afternoon, default: false
      t.boolean :monday_night, default: false
      t.boolean :tuesday_morning, default: false
      t.boolean :tuesday_afternoon, default: false
      t.boolean :tuesday_night, default: false
      t.boolean :wednesday_morning, default: false
      t.boolean :wednesday_afternoon, default: false
      t.boolean :wednesday_night, default: false
      t.boolean :thursday_morning, default: false
      t.boolean :thursday_afternoon, default: false
      t.boolean :thursday_night, default: false
      t.boolean :friday_morning, default: false
      t.boolean :friday_afternoon, default: false
      t.boolean :friday_night, default: false
      t.boolean :saturday_morning, default: false
      t.boolean :saturday_afternoon, default: false
      t.boolean :saturday_night, default: false
      t.string :neighborhood
      t.integer :walks_count, default: 0

      t.timestamps
    end
  end
end
