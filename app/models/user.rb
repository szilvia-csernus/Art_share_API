class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :artworks, foreign_key: :artist_id
    has_many :artwork_views, class_name: :ArtworkShare, foreign_key: :viewer_id
    has_many :shared_artworks, through: :artwork_views, source: :artwork
    has_many :comments, foreign_key: :author_id, dependent: :destroy
end