class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :publisher_id
      t.integer :cartoonist_id


      t.timestamps
    end
  end
end
