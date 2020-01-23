require "administrate/base_dashboard"

class TestimonialDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    age: Field::Number,
    gender: Field::Select.with_options(collection: Testimonial::Gender.all),
    sexual_orientation: Field::Select.with_options(collection: Testimonial::SexualOrientation.all),
    religion: Field::Select.with_options(collection: Testimonial::Religion.all),
    audio_url: Field::String,
    image_url: Field::String,
    location: LocationField,
    published_date: Field::DateTime,
    transcript: Field::Text,
    bio: Field::Text,
    user_id: Field::Number,
    published: Field::Boolean,
    list_of_tags: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :age,
    :gender
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :age,
    :bio,
    :gender,
    :sexual_orientation,
    :religion,
    :audio_url,
    :location,
    :published_date,
    :transcript,
    :user_id,
    :published,
    :list_of_tags,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :age,
    :bio,
    :gender,
    :sexual_orientation,
    :religion,
    :audio_url,
    :image_url,
    :location,
    :published_date,
    :transcript,
    :user_id,
    :published,
    :list_of_tags,
  ].freeze

  # Overwrite this method to customize how testimonials are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(testimonial)
  #   "Testimonial ##{testimonial.id}"
  # end
end
