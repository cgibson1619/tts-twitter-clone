class Tweet < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :user, presence: true
  validates :message, presence: true, length: { maximum: 140, too_long: '140 chars only bro.'}

end
