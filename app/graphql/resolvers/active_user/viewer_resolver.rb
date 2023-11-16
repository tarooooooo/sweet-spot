# 不要だが一旦残す

module Resolvers
  module ActiveUser
    class ViewerResolver < Resolvers::ActiveUser::BaseResolver
      description 'ログインユーザーを取得'
      argument :params, InputTypes::Viewer, required: true

      type Types::ViewerType, null: true

      def resolve(params:)
        User.find_by!(uid: params.uid)
      end
    end
  end
end
