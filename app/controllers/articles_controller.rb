class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&category=#{params[:search]}&apiKey=#{Rails.application.credentials[:news_api_key]}")
    render json: response.parse(:json)
  end
end
