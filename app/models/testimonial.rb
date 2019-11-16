class Testimonial < ApplicationRecord
  has_many :tags, as: :taggable
  has_many :categories, through: :tags
  
  attr_accessor :location_lat
  attr_accessor :location_lng
  
  before_validation :assign_location
  before_validation :assign_list_of_tags
    
  validates :location_lat, :location_lng, :title, presence: true

  def self.published
    where(published: true)
  end
  
  def assign_location
    self.location = [@location_lat, @location_lng] if !(@location_lat.blank? && @location_lng.blank?)
  end
  
  def assign_list_of_tags
    self.list_of_tags = categories.map(&:title).join(', ')
  end
  
  def parameterized_category_list
    categories.map(&:title).map(&:parameterize).join(' ')
  end
  
  def has_owner?
    !user.nil?
  end
  
  module Gender
    
    MALE = "male"
    FEMALE = "female"
    
    def self.all
      [MALE, FEMALE]
    end
  end
  
  module SexualOrientation
    
    GAY = "gay"
    LESBIAN = "lesbian"
    BISEXUAL = "bisexual"
    
    def self.all
      [GAY, LESBIAN, BISEXUAL]
    end
  end
  
  module Religion
    
    CHRISTIANITY = "Christianity"
    ISLAM = "Islam"
    JUDAISM = " Judaism"
    
    def self.all
      [CHRISTIANITY, ISLAM, JUDAISM]
    end
  end
end


