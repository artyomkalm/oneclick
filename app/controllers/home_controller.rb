class HomeController < ApplicationController
  def index
  	@appartments = Appartment.all
    @hash = Gmaps4rails.build_markers(@appartments) do |app, marker|
      marker.lat app.latitude
      marker.lng app.longitude
    end
    @cities = City.all
  end

  def get_regions
    city = City.find(params[:city_id])
    options = []
    city.city_regions.each do |r|
      options << "<option value='#{r.id}'>#{r.name}</option>"
    end 
    render :json => options
  end

  def get_lqs
    city_region = CityRegion.find(params[:region_id])
    options = []
    city_region.lqs.each do |l|
      options << "<option value='#{l.id}'>#{l.number_code}</option>"
    end 
    render :json => options 
  end

  def get_houses
  	lq = Lq.find(params[:lq_id])
    options = []
    lq.houses.each do |h|
      options << "<div class='.col-md-3'><h3><a href='#'>#{h.number_lq} <span class='badge'>#{h.appartments.count}</span></a></h3></div>"
    end 
    render :json => options 

  end
end
