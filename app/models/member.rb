class Member < ApplicationRecord
  belongs_to :team

  # include PgSearch
  # pg_search_scope :search_by_phone,
  #   against: [ :phone ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
