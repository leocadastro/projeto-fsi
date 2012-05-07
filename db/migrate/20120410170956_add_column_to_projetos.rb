class AddColumnToProjetos < ActiveRecord::Migration
  def self.up
	add_column :projetos, :responsavel, :string
  end
end
