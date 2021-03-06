class DosesController < ApplicationController

 before_action :find_cocktail, only: [:new, :create]

  def new
   # @dose = @cocktail.doses.build
   @dose = Dose.new
   @cocktail = Cocktail.find(params[:cocktail_id])
  end


  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  def destroy
    Dose.delete(params[:id])
  end

  private



  def find_cocktail
   @cocktail = Cocktail.find(params[:cocktail_id])
  end

 def dose_params
   params.require(:dose).permit(:description, :ingredient_id)
 end

end



