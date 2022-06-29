class Team < ApplicationRecord
  has_many :coaches
  has_many :team_leaders
  has_many :gymnasts
end
