class AddHtmlToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :html, :boolean
  end
end
