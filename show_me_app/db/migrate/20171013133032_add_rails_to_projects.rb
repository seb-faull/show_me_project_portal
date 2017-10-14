class AddRailsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :rails, :boolean
  end
end
