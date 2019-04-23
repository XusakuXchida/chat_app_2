class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  after_create_commit {MessageBroadcastJob.perform_later self}

  scope :recent, -> { order(created_at: :desc)}
end
