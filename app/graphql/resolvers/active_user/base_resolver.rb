module Resolvers
  module ActiveUser
    class BaseResolver < GraphQL::Schema::Resolver
      # def self.authorized?(object, context)
      #   super && context[:current_user]&.is_active?
      # end
      #
      # def current_user
      #   context[:current_user]
      # end
    end
  end
end
