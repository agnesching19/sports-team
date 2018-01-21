class Member < ApplicationRecord
  belongs_to :team

  include PgSearch
  pg_search_scope :global_search,
    against: [ :phone ],
    associated_against: {
      team: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
