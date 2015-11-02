class AppartmentsController < InheritedResources::Base

  private

    def appartment_params
      params.require(:appartment).permit(:user_id, :city_id, :street_id, :lq_id, :house_id, :latitude, :longitude)
    end
end

