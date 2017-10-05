class Participant < ApplicationRecord
  belongs_to :gender
  belongs_to :participant_type
  belongs_to :param_matrix
  belongs_to :created_by, :class_name => 'User'
end
