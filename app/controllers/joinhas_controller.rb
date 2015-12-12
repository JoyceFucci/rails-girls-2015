class JoinhasController < ApplicationController
  before_action :set_joinha, only: [:show, :edit, :update, :destroy]

  # GET /joinhas
  # GET /joinhas.json
  def index
    @joinhas = Joinha.all
  end

  # GET /joinhas/1
  # GET /joinhas/1.json
  def show
  end

  # GET /joinhas/new
  def new
    @joinha = Joinha.new
  end

  # GET /joinhas/1/edit
  def edit
  end

  # POST /joinhas
  # POST /joinhas.json
  def create
    @joinha = Joinha.new(joinha_params)

    respond_to do |format|
      if @joinha.save
        format.html { redirect_to @joinha, notice: 'Joinha was successfully created.' }
        format.json { render :show, status: :created, location: @joinha }
      else
        format.html { render :new }
        format.json { render json: @joinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joinhas/1
  # PATCH/PUT /joinhas/1.json
  def update
    respond_to do |format|
      if @joinha.update(joinha_params)
        format.html { redirect_to @joinha, notice: 'Joinha was successfully updated.' }
        format.json { render :show, status: :ok, location: @joinha }
      else
        format.html { render :edit }
        format.json { render json: @joinha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joinhas/1
  # DELETE /joinhas/1.json
  def destroy
    @joinha.destroy
    respond_to do |format|
      format.html { redirect_to joinhas_url, notice: 'Joinha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joinha
      @joinha = Joinha.find(params[:id])
      @comments = @joinha.comments.all
@comment = @joinha.comments.build

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joinha_params
      params.require(:joinha).permit(:name, :description, :photo, :upload_date)
    end
end
