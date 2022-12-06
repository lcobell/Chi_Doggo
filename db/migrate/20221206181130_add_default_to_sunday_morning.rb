class AddDefaultToSundayMorning < ActiveRecord::Migration[6.1]
  def change
    change_column_default(
      :users,
      :sunday_morning,
      false
    )
  end
end
