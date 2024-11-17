class CustomField < ApplicationRecord
  belongs_to :profile
  has_many :custom_field_values

  enum :value_type, %w[number text boolean]
  validates_presence_of :name

end
