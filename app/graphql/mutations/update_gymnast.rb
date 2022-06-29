module Mutations
  class UpdateGymnast < BaseMutation
    field :gymnast, Types::GymnastType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :age, Integer, required: true

    def resolve(**args)
      gymnast = Gymnast.find(args[:id])
      gymnast.update(name: args[:name], age: args[:age])
      {
        gymnast: gymnast
      }
    end
  end
end
