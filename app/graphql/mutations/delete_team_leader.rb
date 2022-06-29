module Mutations
  class DeleteTeamLeader < BaseMutation
    field :team_leader, Types::TeamLeaderType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false

    def resolve(**args)
      team_leader = TeamLeader.find(args[:id])
      team_leader.destroy
      {
        team_leader: team_leader
      }
    end
  end
end
