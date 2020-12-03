class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :image_url }

    belongs_to :artist, class_name: :User, foreign_key: :artist_id

    has_many :artwork_shares, dependent: :destroy
    has_many :shared_viewers, through: :artwork_shares, source: :viewer, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, as: :likeable
    has_many :likers, through: :likes, source: :liker
end