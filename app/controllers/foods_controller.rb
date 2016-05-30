class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.new
    food.name = params[:food][:name]
    food.photo_url = params[:food][:photo_url]
    food.comments = params[:food][:comments]
    food.save
    redirect_to "http://localhost:3000/menus"
  end

  def edit
    @food = Food.find_by(id: params[:id])
  end

  def update
    food = Food.find_by(id: params[:id])
    food.name = params[:food][:name]
    food.photo_url = params[:food][:photo_url]
    food.comments = params[:food][:comments]
    food.save
    redirect_to "http://localhost:3000/menus"
  end

  def destroy
    food = Food.find_by(id: params[:id])
    food.delete
    redirect_to "http://localhost:3000/menus"
  end

end
