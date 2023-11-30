module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :teams, resolver: Resolvers::ActiveUser::TeamsResolver
    field :user, resolver: Resolvers::ActiveUser::UserResolver
  end
end
