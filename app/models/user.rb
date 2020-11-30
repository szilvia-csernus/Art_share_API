class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :artworks
    has_many :artwork_views, class_name: :ArtworkShare, foreign_key: :viewer_id
    has_many :shared_artworks, through: :artwork_views, source: :artwork
end