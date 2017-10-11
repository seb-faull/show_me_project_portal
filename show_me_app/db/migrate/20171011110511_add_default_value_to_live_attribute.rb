class AddDefaultValueToLiveAttribute < ActiveRecord::Migration[5.1]
  def up
  change_column :projects, :live, :boolean, default: false
  end

  def down
	 change_column :projects, :live, :boolean, default: nil
  end
end
