class Category < ApplicationRecord
  has_many :tags, dependent: :destroy
  
  before_validation :assign_slug
  
  validates :title, :slug, presence: true
  validates :slug, uniqueness: true
  
  protected
  
  def assign_slug
    self.slug = title.parameterize
  end
end
