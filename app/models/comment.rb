class Comment < ApplicationRecord
    validates :author_id, :artwork_id, presence: true

    belongs_to :artwork
    belongs_to :author, class_name: :User, foreign_key: :author_id

end