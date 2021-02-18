class DosesController < ApplicationController
  def new
    # raise
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params["dose"]["ingredient"])
    @dose = Dose.new(
      description: params["dose"]["description"],
      ingredient: @ingredient,
      cocktail: @cocktail
    )
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  # def dose_description
  #   params.require(:dose).permit(:description)
  # end
end
