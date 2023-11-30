module InputTypes
  class BadmintonProfile < Types::BaseInputObject
    graphql_name 'BadmintonProfileAttributes'

    argument :play_duration, Integer, required: true
    argument :level, Types::Enum::BadmintonProfile::Level, required: true
    argument :play_style, Types::Enum::BadmintonProfile::PlayStyle, required: true
    argument :position, Types::Enum::BadmintonProfile::Position, required: true
  end
end
