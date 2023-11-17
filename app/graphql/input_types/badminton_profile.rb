module InputTypes
  class BadmintonProfile < Types::BaseInputObject
    graphql_name 'BadmintonProfileAttributes'

    argument :play_duration, Integer, required: true
    argument :level, Integer, required: true
    argument :play_style, Integer, required: true
    argument :position, Integer, required: true
  end
end
