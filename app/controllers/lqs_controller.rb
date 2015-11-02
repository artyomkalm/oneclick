class LqsController < InheritedResources::Base

  private

    def lq_params
      params.require(:lq).permit(:city_id, :number_code, :latitude, :longitude)
    end
end

