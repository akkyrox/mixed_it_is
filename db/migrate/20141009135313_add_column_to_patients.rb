class AddColumnToPatients < ActiveRecord::Migration
  def self.change
    add_column :patients, :select_physician, :string
    add_column :patients, :problem, :string
  end
end
