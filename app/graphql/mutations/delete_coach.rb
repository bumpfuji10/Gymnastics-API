module Mutations
  class DeleteCoach < BaseMutation
    field :coach, Types::CoachType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false

    def resolve(**args)
      coach = Coach.find(args[:id])
      coach.destroy
      {
        coach: coach
      }
    end
  end
end
