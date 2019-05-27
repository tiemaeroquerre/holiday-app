class Api::HolidaysController < ApplicationController

  def index 
    country = params[:country]
    year = params[:year]
    @holidays = HTTP.get("https://holidayapi.com/v1/holidays?key=#{ENV["api_key"]}&country=#{country}&year=#{year}").parse["holidays"]
    return 'index.json.jbuilder'
  end

end
