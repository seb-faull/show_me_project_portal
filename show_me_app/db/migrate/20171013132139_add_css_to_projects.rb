class AddCssToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :css, :boolean
  end
end
