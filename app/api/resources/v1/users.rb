module Resources
  module V1
    class Users < Grape::API
      resource :users do
        desc 'create user'
        # パラメータ設定
        params do
          requires :data, type: Hash do
            requires :id, type: String
            requires :email_addresses, type: Array do
              requires :email_address, type: String
            end
          end
        end
        post do
          # パラメータはparamsハッシュ内で利用可能です
          user_data = params[:data]
          user_id = user_data[:id]
          email = user_data[:email_addresses].first[:email_address]

          # ユーザーをデータベースに保存
          user = User.create(uid: user_id, email: email)

          # レスポンスを構築して返す
          {
            uid: user.id,
            email: user.email
          }
        end

        # http://localhost:3000/api/v1/users
        desc 'user list'
        get do
          present User.all
        end

        # http://localhost:3000/api/v1/users/{:id}
        desc 'user'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'user id'
        end
        get ':id' do
          present User.find(params[:id])
        end
      end
    end
  end
end
