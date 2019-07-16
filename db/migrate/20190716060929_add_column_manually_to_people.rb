class AddColumnManuallyToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :manually_added, :boolean, default: false
  end
end
