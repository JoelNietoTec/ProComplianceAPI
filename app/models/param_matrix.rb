class ParamMatrix < ApplicationRecord
  belongs_to :matrix_type
  has_many :param_categories
end

class ParamMatrixSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :description, :matrix_type_id, :matrix_type, :param_categories, :created_at, :updated_at
end
