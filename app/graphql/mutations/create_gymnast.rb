module Mutations
  class CreateGymnast < BaseMutation
    field :gymnast, Types::GymnastType, null: false

    argument :team_id, ID, required: true
    argument :name, String, required: true
    argument :age, Integer, required: true

    def resolve(**args)
      team = Team.find(args[:team_id])
      gymnast = team.gymnasts.create(name: args[:name], age: args[:age])
      {
        gymnast: gymnast
      }
    end
  end
end
