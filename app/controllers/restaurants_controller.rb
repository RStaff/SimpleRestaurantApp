class RestaurantsController < ApplicationController
  def index
    @restaurant= Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path(@restaurant)
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      redirect_to :back
    end 
    #create restraunt and redirect to Show
  end


  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    
    if @restaurant.update!(restaurant_params)
      redirect_to restaurants_path(@restaurant)
    end
  end 


  def destroy
    #remove the  restaunratn from the list
    @restaurant = Restaurant.find params[:id]
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end


  def show

      @restaurant = Restaurant.find(params[:id])
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address, :phone_number, :photo, :image, :menu)
    end
end


