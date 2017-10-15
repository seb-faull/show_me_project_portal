class RemoveYearFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :year, :integer
  end
end
