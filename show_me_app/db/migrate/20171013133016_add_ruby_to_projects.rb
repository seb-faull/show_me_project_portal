class AddRubyToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :ruby, :boolean
  end
end
