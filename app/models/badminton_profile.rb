class BadmintonProfile < ApplicationRecord
  belongs_to :user

  enum level: {
    low: 0,
    middle: 1,
    high: 2,
  }, _prefix: true

  enum play_style: {
    defence: 0,
    all_round: 1,
    offence: 2,
  }, _prefix: true

  enum position: {
    top: 0,
    back: 1,
  }, _prefix: true
end
