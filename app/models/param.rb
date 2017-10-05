class Param < ApplicationRecord
  belongs_to :param_category
  belongs_to :param_table
end

class ParamSerializer < ActiveModel::Serializer
  attributes :id, :param_category_id, :param_table_id, :description, :param_table, :weighting, :name, :english_name, :created_at, :updated_at
end