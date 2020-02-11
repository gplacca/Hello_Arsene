class ChangeDateFormat < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :birth_date, :string
  end
end
