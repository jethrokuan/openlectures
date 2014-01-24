class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :subway_map

      t.timestamps
    end
  end
end
