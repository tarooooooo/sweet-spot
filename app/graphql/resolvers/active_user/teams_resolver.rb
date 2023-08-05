module Resolvers
  module ActiveUser
    class TeamsResolver < Resolvers::ActiveUser::BaseResolver
      description 'チームの一覧を取得'

      type [Types::TeamType], null: true

      def resolve
        Team.all
      end
    end
  end
end
