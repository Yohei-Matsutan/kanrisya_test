class AddWorkerIdToLog < ActiveRecord::Migration[6.1]
  def change
    add_column :logs, :worker_id, :integer
  end
end
