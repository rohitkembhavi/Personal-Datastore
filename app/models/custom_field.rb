class CustomField < ApplicationRecord
  has_many :custom_field_values, dependent: :destroy

  enum :value_type, %w[number text boolean]

  validates :name,
            presence: true,
            uniqueness: true
end
