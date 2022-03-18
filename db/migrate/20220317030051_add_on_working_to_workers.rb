class AddOnWorkingToWorkers < ActiveRecord::Migration[6.1]
  def change
    add_column :workers, :on_working, :boolean
  end
end
