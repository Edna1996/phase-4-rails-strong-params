class BirdsController < ApplicationController

  wrap_parameters format: []
  # GET /birds
  def index
    birds = Bird.all
@@ -8,8 +9,9 @@ def index

  # POST /birds
  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    bird = Bird.create(bird_params)
    render json: bird, status: :created
    byebug
  end

  # GET /birds/:id
@@ -22,4 +24,10 @@ def show
    end
  end

  private

  def bird_params
    params.permit(:name, :species)
  end

end