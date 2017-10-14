class AddJavaScriptToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :javascript, :boolean
  end
end
