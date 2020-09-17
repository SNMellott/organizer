class Task < ApplicationRecord
  belongs_to :user
  has_many :task_type
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :information, presence: true
  validates :title, presence: true
end
