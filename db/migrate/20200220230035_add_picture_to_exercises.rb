class AddPictureToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :picture, :string
    add_column :exercises, :video, :string
  end
end
