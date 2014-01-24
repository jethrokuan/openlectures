class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.belongs_to :subject, index: true
      t.integer :position

      t.timestamps
    end
  end
end
