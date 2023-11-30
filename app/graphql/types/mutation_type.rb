module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_badminton_profile, mutation: Mutations::CreateBadmintonProfile
  end
end
