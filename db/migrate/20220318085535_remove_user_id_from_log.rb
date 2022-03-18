class RemoveUserIdFromLog < ActiveRecord::Migration[6.1]
  def change
    remove_column :logs, :user_id, :integer
  end
end
