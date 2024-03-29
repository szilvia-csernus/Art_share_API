class ArtworkShare < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: true
    validates :artwork_id, uniqueness: { scope: :viewer_id, message: "can't be shared twice with same person!"}

    belongs_to :artwork
    belongs_to :viewer, class_name: :User, foreign_key: :viewer_id

end