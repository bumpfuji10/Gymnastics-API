module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    # team
    field :teams, [Types::TeamType], null: false
    def teams
      Team.all
    end

    field :team, Types::TeamType, null: false do
      argument :id, ID, required: false
    end
    def team(id:)
      Team.find(id)
    end

    # coach
    field :coaches, [Types::CoachType], null: false
    def coaches
      Coach.all
    end

    field :coach, Types::CoachType, null: false do
      argument :id, ID, required: false
    end
    def coach(id:)
      Coach.find(id)
    end

    #gymnast
    field :gymnasts, [Types::GymnastType], null: false
    def gymnasts
      Gymnast.all
    end

    field :gymnast, Types::GymnastType, null: false do
      argument :id, ID, required: false
    end
    def gymnast(id:)
      Gymnast.find(id)
    end

    # score
    field :scores, [Types::ScoreType], null: false
    def scores
      Score.all
    end

    field :score, Types::ScoreType, null: false do
      argument :id, ID, required: false
    end
    def score(id:)
      Score.find(id)
    end

    # team_leader
    field :team_leaders, [Types::TeamLeaderType], null: false
    def team_leaders
      TeamLeader.all
    end

    field :team_leader, Types::TeamLeaderType, null: false do
      argument :id, ID, required: false
    end
    def team_leader(id:)
      TeamLeader.find(id)
    end

  end
end
