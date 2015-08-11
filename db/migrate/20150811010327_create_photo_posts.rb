class CreatePhotoPosts < ActiveRecord::Migration
  def change
    create_table :photo_posts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
