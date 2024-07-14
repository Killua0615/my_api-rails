class EpisodeRelation < ApplicationRecord
  belongs_to :character
  belongs_to :episode
end
