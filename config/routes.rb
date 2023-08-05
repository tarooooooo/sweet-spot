Rails.application.routes.draw do
  # ここの部分を記述
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: "graphql#execute"
  end

  post "/graphql", to: "graphql#execute"
end
