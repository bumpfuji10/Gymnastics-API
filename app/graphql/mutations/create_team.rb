module Mutations
  class CreateTeam < BaseMutation
    # 返り値指定
    field :team, Types::TeamType, null: false

    argument :name, String, required:true


    def resolve(**args)
      team = Team.create(name: args[:name])
      {
        team: team
      }
    end
  end
end

# client入力例
# mutation {
#   createTeam(
#     input:{
#       name: "チームE"
#     }
#   ){
#     team {
#       id
#       name
#     }
#   }
# }

