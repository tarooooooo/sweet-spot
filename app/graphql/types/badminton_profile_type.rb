# frozen_string_literal: true

module Types
  class BadmintonProfileType < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::UserType, null: false
    field :play_duration, Integer, null: false
    field :level, Types::Enum::BadmintonProfile::Level, null: false
    field :play_style, Types::Enum::BadmintonProfile::PlayStyle, null: false
    field :position, Types::Enum::BadmintonProfile::Position, null: false
  end
end
