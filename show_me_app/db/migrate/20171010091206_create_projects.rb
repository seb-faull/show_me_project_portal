class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :live
      t.attachment :image
      t.integer :user_id

      t.timestamps
    end
  end
end
