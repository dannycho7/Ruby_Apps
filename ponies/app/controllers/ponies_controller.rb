class PoniesController < ApplicationController
  before_action :set_pony, only: [:show, :edit, :update, :destroy]

  # GET /ponies
  # GET /ponies.json
  def index
    @ponies = Pony.all
  end

  # GET /ponies/1
  # GET /ponies/1.json
  def show
  end

  # GET /ponies/new
  def new
    @pony = Pony.new
  end

  # GET /ponies/1/edit
  def edit
  end

  # POST /ponies
  # POST /ponies.json
  def create
    @pony = Pony.new(pony_params)

    respond_to do |format|
      if @pony.save
        format.html { redirect_to @pony, notice: 'Pony was successfully created.' }
        format.json { render :show, status: :created, location: @pony }
      else
        format.html { render :new }
        format.json { render json: @pony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponies/1
  # PATCH/PUT /ponies/1.json
  def update
    respond_to do |format|
      if @pony.update(pony_params)
        format.html { redirect_to @pony, notice: 'Pony was successfully updated.' }
        format.json { render :show, status: :ok, location: @pony }
      else
        format.html { render :edit }
        format.json { render json: @pony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponies/1
  # DELETE /ponies/1.json
  # DELETE /ponies/1
  # DELETE /ponies/1.json
  def destroy
     @pony = Pony.find(params[:id])
     @pony.destroy
     
     respond_to do |format|
        format.html { redirect_to ponies_url }
        format.json { head :no_content }
        format.js   { render :layout => false }
     end
     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pony
      @pony = Pony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pony_params
      params.require(:pony).permit(:name, :profession)
    end
end
