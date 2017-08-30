class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :url
      t.text :description
      t.string :author
      t.string :data

      t.timestamps
    end
  end
end
