module Admin
  class TestimonialsController < Admin::ApplicationController

    def permitted_attributes
      [:title, :age, :bio, :gender, :sexual_orientation, :religion, :audio_url, :image_url, :transcript, :location_lat, :location_lng, :published]
    end
  end
end
