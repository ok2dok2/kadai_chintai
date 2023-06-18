class HomesController < ApplicationController
  def index
    @homes = Home.all
  end
  
  def new
    @home = Home.new
    @home.stations.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to homes_path
    else
      render :new
    end
  end

  def edit
    @home = Home.new(home_params)
  end

  def update
    @home = Home.new(home_params)
    if @home.update
      redirect_to homes_path, notice: "更新しました"
    else
      render :new
    end
  end
  private

  def home_params
    params.require(:home).permit(:name, :rent, :address, :age, :remarks, stations_attributes: [:route, :station, :minute])
  end
end
