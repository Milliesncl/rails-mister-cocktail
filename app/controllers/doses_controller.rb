class DosesController < ApplicationController
  def new
    @doses = Dose.new
  end

  def create
    @dose = Dose.new(params_doses)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def params_doses
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
