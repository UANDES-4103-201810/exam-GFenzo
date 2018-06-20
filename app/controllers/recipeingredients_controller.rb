class RecipeingredientsController < ApplicationController
  before_action :set_recipeingredient, only: [:show, :edit, :update, :destroy]

  # GET /recipeingredients
  # GET /recipeingredients.json
  def index
    @recipeingredients = Recipeingredient.all
  end

  # GET /recipeingredients/1
  # GET /recipeingredients/1.json
  def show
  end

  # GET /recipeingredients/new
  def new
    @recipeingredient = Recipeingredient.new
  end

  # GET /recipeingredients/1/edit
  def edit
  end

  # POST /recipeingredients
  # POST /recipeingredients.json
  def create
    @recipeingredient = Recipeingredient.new(recipeingredient_params)

    respond_to do |format|
      if @recipeingredient.save
        format.html { redirect_to @recipeingredient, notice: 'Recipeingredient was successfully created.' }
        format.json { render :show, status: :created, location: @recipeingredient }
      else
        format.html { render :new }
        format.json { render json: @recipeingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipeingredients/1
  # PATCH/PUT /recipeingredients/1.json
  def update
    respond_to do |format|
      if @recipeingredient.update(recipeingredient_params)
        format.html { redirect_to @recipeingredient, notice: 'Recipeingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipeingredient }
      else
        format.html { render :edit }
        format.json { render json: @recipeingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipeingredients/1
  # DELETE /recipeingredients/1.json
  def destroy
    @recipeingredient.destroy
    respond_to do |format|
      format.html { redirect_to recipeingredients_url, notice: 'Recipeingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipeingredient
      @recipeingredient = Recipeingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipeingredient_params
      params.require(:recipeingredient).permit(:recipe, :ingredient)
    end
end
