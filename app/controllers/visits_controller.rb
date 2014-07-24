class VisitsController < ApplicationController


  def index
    @visits = Location.find(params[:location_id]).visits
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
    #declarar las variables que llama el form si no hara crash
    @visit = Visit.new 
    @location = Location.find(params[:location_id])

  end

  def create
    @location = Location.find(params[:location_id])
    @visit = @location.visits.new(visit_params)

    if @visit.save
      redirect_to action: 'index', controller: 'visits', location_id: @location.id
      flash[:notice] = 'Thanks for creating a new visit :)'
    else
      flash[:alert] = 'ERROR DETECTED MAYDAY'
      render 'new'

    end
  end

  def destroy
    @location = Location.find(params[:location_id])
    @visit = Visit.find(params[:id])
    @visit.destroy

    if @visit.destroy
      redirect_to action: 'index', controller: 'visits', location_id: @location.id
    else 
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:location_id])
    @visit = Visit.find(params[:id])
  end

  def update
    @location = Location.find(params[:location_id])
    @visit = Visit.find(params[:id])


    if @visit.update(visit_params)
      redirect_to action: 'index', controller: 'visits', location_id: @location.id
    else
      render 'edit'
    end
  end

   private

  def visit_params
    params.require(:visit).permit(:user_name, :from_date, :to_date)
  end


 
end
