class CreateJobposts < ActiveRecord::Migration[5.2]
  def change
    create_table :jobposts do |t|
      t.string :title
      t.string :company
      t.text :description
      t.integer :salary
      t.string :url

      t.timestamps
    end
  end
end
