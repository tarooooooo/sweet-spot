module InputTypes
  class CreateUser < Types::BaseInputObject
    graphql_name 'UserAttributes'

    argument :uid, String, required: true
    argument :email, String, required: true
  end
end
