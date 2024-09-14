class Profile < ApplicationRecord
  enum :gender, [ :male, :female, :other ]
  enum :blood_group, %w[A+ A- B+ B- O+ O- AAB+ AAB-]
  enum :relation, %w[friend relative]
  enum :connection_score, {low: 0, medium: 1, high: 2}
end
