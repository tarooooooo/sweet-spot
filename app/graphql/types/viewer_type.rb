# frozen_string_literal: true

module Types
  class ViewerType < Types::BaseObject
    field :id, ID, null: true
    field :email, String, null: true
    field :uid, String, null: true
  end
end
