module AppartmentsHelper
  def get_streets_name
     Street.uniq.pluck(:name)    
  end
end
