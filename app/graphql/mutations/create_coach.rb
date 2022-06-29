module Mutations
  class CreateCoach < BaseMutation
    field :coach, Types::CoachType, null: false

    argument :team_id, ID, required: true
    argument :name, String, required: true

    def resolve(**args)
      team = Team.find(args[:team_id])
      coach = team.coaches.create(name: args[:name])
      {
        coach: coach
      }
    end
  end
end
