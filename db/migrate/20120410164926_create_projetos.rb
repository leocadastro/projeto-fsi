class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
	  t.string :responsavel
      t.string :descricao
      t.string :tipo_projeto
      t.float :valor_do_contrato
      t.string :status
      t.string :justificativa_do_status
      t.date :inicio
      t.date :termino
      t.string :colaboradores
      t.string :anexos

      t.timestamps
    end
  end
end
