class Task < ApplicationRecord
  belongs_to :user
  has_many :task_types
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :information, presence: true
  validates :title, presence: true
  validates :task_type_id, presence: true
end
