class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  validates :content, presence: true, length: { minimum: 1 }
  validates :user, presence: true
  validates :channel, presence: true

  def as_json(_options = {})
    author = user.email.match(/(?<=@)[^.]+/).to_s

    {
      id: id,
      author: author,
      content: content,
      created_at: created_at
    }
  end
end
