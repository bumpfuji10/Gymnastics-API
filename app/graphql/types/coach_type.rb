# frozen_string_literal: true

module Types
  class CoachType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :team_id, Integer, null: false
    # mutation用のfield
    field :team, Types::TeamType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
