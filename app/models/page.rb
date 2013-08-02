class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  attr_accessible :content, :name, :title, :featured, :category_id
  scope :featured, where( featured: true)
  belongs_to :category
  
  # instead of the scope we could have defined a class method
  #def self.featured
  #  where(featured: true)
  #end
end
