# frozen_string_literal: true

module Types
  class TeamType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :name, String, null: false
    # coach
    field :coaches, [Types::CoachType], null: false

    # gymnast
    field :gymnasts, [Types::GymnastType], null: false

    # team_leader
    field :team_leaders, [Types::TeamLeaderType], null: false

  end
end
