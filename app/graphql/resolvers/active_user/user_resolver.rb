# 不要だが一旦残す

module Resolvers
  module ActiveUser
    class UserResolver < Resolvers::ActiveUser::BaseResolver
      description 'ユーザーを取得'
      argument :uid, ID, required: true

      type Types::UserType, null: false

      def resolve(uid:)
        user = User.find_by(uid: uid)
        context[:current_user] = user
        # binding.pry
        user
      end
    end
  end
end
