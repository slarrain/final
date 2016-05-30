class ScoresController < ApplicationController

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find_by(id: params[:id])
    @score = Score.find_by(food_id: @food.id, user_id: session[:user_id])
    # @score = Score.find_by(user_id: session[:user_id])

  end

  def edit
    @score = Score.find_by(id: params[:id])
  end

  def new
      @score = Score.new(food_id: params[:id])
  end

  def create
    # TODO: create score here
    score = Score.new(value: params[:score][:value],
    dont_like: params[:score][:dont_like], food_id: params[:food_id])
    score.user_id = session[:user_id]
    score.save

    redirect_to scores_url
  end

  def destroy
    score = Score.find_by(id: params[:id])
    score.delete
    redirect_to scores_url
  end

  def update
      score = Score.find_by(id: params[:id])
      score.value = params[:score][:value]
      score.dont_like = params[:score][:dont_like]
      score.save

      redirect_to scores_url
  end


end
