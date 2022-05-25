class PostersController < ApplicationController

  def index
    posters = Poster.all
    render json: posters.as_json
  end

  def create
    poster = Poster.new(
      venue: params[:venue],
      year: params[:year],
      description: params[:description]
    )
    poster.save
    render json: poster.as_json
  end

  def show
    poster = Poster.find_by(id: params[:id])
    render json: poster.as_json

  end

  def update
    poster = Poster.find_by(id: params[:id])
    poster.venue = params[:venue] || poster.venue
    poster.year = params[:year] || poster.year
    poster.description = params[:description] || poster.description
    poster.save
    render json: poster.as_json

  end

  def destroy
    poster = Poster.find_by(id: params[:id])
    poster.delete
    render json: {message: "Poster deleted"}

  end
end
