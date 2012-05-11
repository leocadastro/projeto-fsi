class Projeto < ActiveRecord::Base
has_many :projetos

validates_presence_of :status, :message => " - deve ser preenchido"
validates_presence_of :tipo_projeto, :message => " - deve ser preenchido"

end
