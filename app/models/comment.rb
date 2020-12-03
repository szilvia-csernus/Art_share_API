class Comment < ApplicationRecord
    validates :author_id, :artwork_id, presence: true

    belongs_to :artwork
    belongs_to :author, class_name: :User, foreign_key: :author_id

    has_many :likes, as: :likeable
    has_many :likers, through: :likes, source: :liker
end