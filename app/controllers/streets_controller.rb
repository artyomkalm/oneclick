class StreetsController < InheritedResources::Base

  private

    def street_params
      params.require(:street).permit(:city_id, :name, :latitude, :longitude)
    end
end

