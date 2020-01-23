require "administrate/field/base"

class LocationField < Administrate::Field::Base
  def to_s
    data
  end
  
  def latitude
    return data.lat unless data.nil?
  end
  
  def longitude
    return data.lon unless data.nil?
  end

end
