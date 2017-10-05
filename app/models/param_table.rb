class ParamTable < ApplicationRecord
  belongs_to :table_type
  has_many :param_values, dependent: :destroy
end

class ParamTableSerializer < ActiveModel::Serializer
  attributes :id, :name, :english_name, :table_type_id, :table_type, :param_values, :created_at, :updated_at
end