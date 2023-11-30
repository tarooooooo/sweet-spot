module Mutations
  class CreateBadmintonProfile < Mutations::BaseMutation
    argument :params, InputTypes::BadmintonProfile, required: true
    field :badminton_profile, Types::BadmintonProfileType, null: false

    def resolve(params:)
      current_user = User.find_by(email: "ryutaromaeda83@gmail.com")
      badminton_profile = current_user.create_badminton_profile!(params.to_h)
      {badminton_profile: badminton_profile}

    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
