class Team < ApplicationRecord
  has_many :members, dependent: :destroy

  # include PgSearch
  # pg_search_scope :global_search,
  #   against: [ :name ],
  #   associated_against: {
  #     members: [ :phone ]
  #   },
  #    using: {
  #     tsearch: { prefix: true }
  #   }
end
