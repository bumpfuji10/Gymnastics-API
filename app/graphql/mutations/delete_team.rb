module Mutations
  class DeleteTeam < BaseMutation
    field :team, Types::TeamType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false

    def resolve(**args)
      team = Team.find(args[:id])
      team.destroy
      # destroy後何も返さないから後ろに何か記述する必要なし
      {
        team: team
      }
    end
  end
end
