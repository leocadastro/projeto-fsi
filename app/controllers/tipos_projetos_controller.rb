class TiposProjetosController < ApplicationController
  # GET /tipos_projetos
  # GET /tipos_projetos.json
  def index
    @tipos_projetos = TiposProjeto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipos_projetos }
    end
  end

  # GET /tipos_projetos/1
  # GET /tipos_projetos/1.json
  def show
    @tipos_projeto = TiposProjeto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipos_projeto }
    end
  end

  # GET /tipos_projetos/new
  # GET /tipos_projetos/new.json
  def new
    @tipos_projeto = TiposProjeto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipos_projeto }
    end
  end

  # GET /tipos_projetos/1/edit
  def edit
    @tipos_projeto = TiposProjeto.find(params[:id])
  end

  # POST /tipos_projetos
  # POST /tipos_projetos.json
  def create
    @tipos_projeto = TiposProjeto.new(params[:tipos_projeto])

    respond_to do |format|
      if @tipos_projeto.save
        format.html { redirect_to @tipos_projeto, notice: 'Tipos projeto was successfully created.' }
        format.json { render json: @tipos_projeto, status: :created, location: @tipos_projeto }
      else
        format.html { render action: "new" }
        format.json { render json: @tipos_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipos_projetos/1
  # PUT /tipos_projetos/1.json
  def update
    @tipos_projeto = TiposProjeto.find(params[:id])

    respond_to do |format|
      if @tipos_projeto.update_attributes(params[:tipos_projeto])
        format.html { redirect_to @tipos_projeto, notice: 'Tipos projeto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipos_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_projetos/1
  # DELETE /tipos_projetos/1.json
  def destroy
    @tipos_projeto = TiposProjeto.find(params[:id])
    @tipos_projeto.destroy

    respond_to do |format|
      format.html { redirect_to tipos_projetos_url }
      format.json { head :no_content }
    end
  end
end
