class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  validates :content, presence: true, length: { minimum: 1 }
  validates :user, presence: true
  validates :channel, presence: true
end
