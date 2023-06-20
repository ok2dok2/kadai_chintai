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

  def show
    @home = Home.find(params[:id])
  end


  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to homes_path, notice: "更新しました"
    else
      render :new
    end
  end
  
  def destroy
    @home = Home.find(params[:id])
    @home.destroy
      redirect_to homes_path, notice:"削除しました"
  end

  private

  def home_params
    params.require(:home).permit(:name, :rent, :address, :age, :remarks, stations_attributes: [:route, :station, :minute])
  end
end
