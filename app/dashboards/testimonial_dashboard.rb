require "administrate/base_dashboard"

class TestimonialDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    tags: Field::HasMany,
    categories: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    gender: Field::Select.with_options(collection: Testimonials::Gender.all),
    sexual_orientation: Field::Select.with_options(collection: Testimonials::SexualOrientation.all),
    religion: Field::Select.with_options(collection: Testimonials::Religion.all),
    age: Field::Number,
    audio_url: Field::String,
    location: Field::String.with_options(searchable: false),
    published_date: Field::DateTime,
    transcript: Field::Text,
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
    :tags,
    :categories,
    :id,
    :name,
    :age,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :tags,
    :categories,
    :id,
    :name,
    :age,
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
    :tags,
    :categories,
    :name,
    :age,
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
  ].freeze

  # Overwrite this method to customize how testimonials are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(testimonial)
  #   "Testimonial ##{testimonial.id}"
  # end
end
