class AddCollabaratorsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :collabarators, :text
  end
end
