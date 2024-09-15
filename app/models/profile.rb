class Profile < ApplicationRecord
  enum :gender, %w[ male female other ], prefix: :gender
  enum :blood_group, %w[a_positive a_negative b_positive b_negative ab_positive ab_negative o_positive o_negative], prefix: :blood_group
  enum :relation, %w[friend relative], prefix: :relation
  enum :connection_score, %w[low medium high], prefix: :connection_score
end
