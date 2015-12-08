class AppartmentsController < InheritedResources::Base
  before_filter :set_appartments_hash , :only => [:index]

  def get_lqs_by_city_region
    city_region = CityRegion.find(params[:city_region_id])
    options = []
    city_region.lqs.each do |lq|
      options << "<option data-lat='#{lq.latitude}' data-lng='#{lq.longitude}' value='#{lq.id}'>#{lq.number_code}</option>"
    end 
    render :json => options 
  end

  def get_houses_by_lq
    lq = Lq.find(params[:lq_id])
    options = []
    lq.houses.each do |h|
      options << "<option data-lat='#{h.latitude}' data-lng='#{h.longitude}' value='#{h.id}'>#{h.number_lq}</option>"
    end 
    render :json => options 
  end

  def get_street_address
    house = House.find(params[:house_id])
    render :text => "#{house.street.name} - #{house.number_street}" 
  end

  private

    def appartment_params
      params.require(:appartment).permit(:user_id, :city_id, :street_id, :lq_id, :house_id, :latitude, :longitude)
    end

    def set_appartments_hash
      @apps = Appartment.all
      @hash = Gmaps4rails.build_markers(@apps) do |appartment, marker|
        marker.lat appartment.latitude
        marker.lng appartment.longitude
      end
    end
end

