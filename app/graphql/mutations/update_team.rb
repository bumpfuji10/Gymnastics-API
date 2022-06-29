module Mutations
  class UpdateTeam < BaseMutation
    # 返り値指定
    field :team, Types::TeamType, null: false

    # id必須
    argument :id, ID, required: true
    argument :name, String, required: true

    # 特定のidを持つTeamを取得しnameをupdateさせる
    def resolve(**args)
      team = Team.find(args[:id])
      team.update(name: args[:name])
      {
        team: team
      }
    end
  end
end
