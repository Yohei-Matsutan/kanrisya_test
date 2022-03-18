class AddUserIdToLog < ActiveRecord::Migration[6.1]
  def change
    add_column :logs, :user_id, :integer
  end
end
