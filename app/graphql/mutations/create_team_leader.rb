module Mutations
  class CreateTeamLeader < BaseMutation
    field :team_leader, Types::TeamLeaderType, null: false

    argument :team_id, ID, required: true
    argument :name, String, required: true

    def resolve(**args)
      team = Team.find(args[:team_id])
      team_leader = team.team_leaders.create(name: args[:name])
      {
        team_leader: team_leader
      }
    end
  end
end
