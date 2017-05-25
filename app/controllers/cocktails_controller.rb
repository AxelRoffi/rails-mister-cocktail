class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])

  end

  def new
     @cocktail = Cocktail.new
  end

  def create
   @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
   redirect_to cocktail_path(@cocktail)
  else
  render :new
    end
  end

  # def create
  #   @dose = Dose.new(dose_params)
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose.cocktail = @cocktail
  #   if @dose.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :new
  #   end
  # end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


end



#   def show
#     @restaurant = Restaurant.find(params[:id])

#     @review = @restaurant.reviews.build
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.create(restaurant_params)
#     redirect_to restaurant_path(@restaurant)
#   end

#   private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :category)
#   end

# end
