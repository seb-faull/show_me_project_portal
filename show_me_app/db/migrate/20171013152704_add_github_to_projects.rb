class AddGithubToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :github, :text
  end
end
