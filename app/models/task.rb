class Task < ApplicationRecord
  belongs_to :task_status
  belongs_to :participant
end
