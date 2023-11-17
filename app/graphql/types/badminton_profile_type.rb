# frozen_string_literal: true

module Types
  class BadmintonProfileType < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::UserType, null: false
    field :play_duration, Integer, null: false
    field :level, Integer, null: false
    field :play_style, Integer, null: false
    field :position, Integer, null: false
  end
end
