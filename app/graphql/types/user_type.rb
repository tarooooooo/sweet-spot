# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :uid, String, null: false
    field :badminton_profile, Types::BadmintonProfileType, null: true
  end
end
