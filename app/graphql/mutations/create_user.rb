module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :params, InputTypes::CreateUser, required: true
    field :user, Types::UserType, null: false

    def resolve(params:)
      user = User.create(params.to_h)
      {user: user}

    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
