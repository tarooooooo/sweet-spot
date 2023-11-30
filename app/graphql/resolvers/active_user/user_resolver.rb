module Resolvers
  module ActiveUser
    class UserResolver < Resolvers::ActiveUser::BaseResolver
      description 'ユーザーを取得'
      type Types::UserType, null: false

      def resolve
        current_user
      end
    end
  end
end
