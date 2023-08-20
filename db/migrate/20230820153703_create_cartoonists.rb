class CreateCartoonists < ActiveRecord::Migration[5.2]
  def change
    create_table :cartoonists do |t|
      t.string :artist_name

      t.timestamps
    end
  end
end
