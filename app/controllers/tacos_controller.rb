class TacosController < ApplicationController
  before_action :set_taco, only: %i[show update destroy]

  def index
    @tacos = Taco.all

    render json: @tacos
  end

  def show
    render json: @taco
  end

  def create
    @taco = Taco.new(taco_params)

    if @taco.save
      render json: @taco, status: :created, location: taco_url(@taco)
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @taco.destroy
  end

  private

  def set_taco
    @taco = Taco.find(params[:id])
  end

  def taco_params
    params.require(:taco).permit(:meat, :rice, :salsa, :chesse, :notes)
  end
end
