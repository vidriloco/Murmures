module Admin
  class TestimonialsController < Admin::ApplicationController

    def permitted_attributes
      [:title, :age, :gender, :sexual_orientation, :religion, :audio_url, :image_url, :location_lat, :location_lng, :published]
    end
  end
end
