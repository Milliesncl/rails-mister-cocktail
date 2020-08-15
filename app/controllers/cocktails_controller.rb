class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name, :photo)
  end
end
