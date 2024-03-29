class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :artworks, foreign_key: :artist_id
    has_many :artwork_views, class_name: :ArtworkShare, foreign_key: :viewer_id
    has_many :shared_artworks, through: :artwork_views, source: :artwork
    has_many :comments, foreign_key: :author_id, dependent: :destroy
    has_many :likes, foreign_key: :liker_id, dependent: :destroy
    has_many :liked_artworks, through: :likes, source: :likeable, source_type: :Artwork
    has_many :liked_comments, through: :likes, source: :likeable, source_type: :Comment
end