class AddProjectIdToTags < ActiveRecord::Migration[5.1]
  def change
    add_column :tags, :project_id, :integer
  end
end
