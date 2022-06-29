module Mutations
  class UpdateCoach < BaseMutation
    field :coach, Types::CoachType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true

    def resolve(**args)
      coach = Coach.find(args[:id])
      coach.update(name: args[:name])
      {
        coach: coach
      }
    end
  end
end
