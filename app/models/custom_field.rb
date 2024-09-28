class CustomField < ApplicationRecord
  enum :value_type, %w[number text boolean]
  validates_presence_of :name
end
