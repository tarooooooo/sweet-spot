Rails.application.routes.draw do
  # ここの部分を記述
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: "graphql#execute"

  post "/graphql", to: "graphql#execute"
end
