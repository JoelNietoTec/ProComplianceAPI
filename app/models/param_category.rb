class ParamCategory < ApplicationRecord
  belongs_to :param_matrix
  has_many :params
end

class ParamCategorySerializer < ActiveModel::Serializer
  attributes :id, :param_matrix_id, :name, :english_name, :params, :weighting, :created_at, :updated_at
end