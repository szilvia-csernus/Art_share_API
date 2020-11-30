class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :image_url, uniqueness: {scope: :title, message: "One image title per user only!"}

    belongs_to :artist, class_name: :User, foreign_key: :artist_id

    has_many :artwork_shares,
    has_many :shared_viewers, through: :artwork_shares, source: :viewer
end