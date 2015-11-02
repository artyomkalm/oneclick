class HousesController < InheritedResources::Base

  private

    def house_params
      params.require(:house).permit(:street_id, :lq_id, :number_street, :number_lq, :latitude, :longitude)
    end
end

