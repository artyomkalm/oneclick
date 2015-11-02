class CitiesController < InheritedResources::Base

  private

    def city_params
      params.require(:city).permit(:name, :latitude, :longitude)
    end
end

