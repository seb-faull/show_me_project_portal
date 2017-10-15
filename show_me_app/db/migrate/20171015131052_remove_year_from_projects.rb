class RemoveYearFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :year, :integer
  end
end
