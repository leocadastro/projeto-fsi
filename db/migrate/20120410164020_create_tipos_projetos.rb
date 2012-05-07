class CreateTiposProjetos < ActiveRecord::Migration
  def change
    create_table :tipos_projetos do |t|
      t.string :tipo
      t.string :descricao

      t.timestamps
    end
  end
end
