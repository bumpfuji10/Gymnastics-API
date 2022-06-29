module Mutations
  class DeleteGymnast < BaseMutation
    field :gymnast, Types::GymnastType, null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :age, Integer, required: false

    def resolve(**args)
      gymnast = Gymnast.find(args[:id])
      gymnast.destroy
      {
        gymnast: gymnast
      }
    end
  end
end
