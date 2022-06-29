module Mutations
  class UpdateTeamLeader < BaseMutation
    field :team_leader, Types::TeamLeaderType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true

    def resolve(**args)
      team_leader = TeamLeader.find(args[:id])
      team_leader.update(name: args[:name])
      {
        team_leader: team_leader
      }
    end
  end
end
