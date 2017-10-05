class ParamValue < ApplicationRecord
  belongs_to :param_table
  has_many :param_sub_values, dependent: :destroy
end

class ParamValueSerializer < ActiveModel::Serializer
  attributes :id, :param_table_id, :param_table, :name, :english_name, :score, :param_sub_values, :created_at, :updated_at
end