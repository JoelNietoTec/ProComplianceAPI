class ParticipantParam < ApplicationRecord
  belongs_to :participant
  belongs_to :param_matrix
  belongs_to :param_category
  belongs_to :param
  belongs_to :param_value
  belongs_to :param_sub_value
end
