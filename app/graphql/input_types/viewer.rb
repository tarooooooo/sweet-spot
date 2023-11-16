module InputTypes
  class Viewer < Types::BaseInputObject
    graphql_name 'ViewerAttributes'
    argument :uid, String, required: true
  end
end
